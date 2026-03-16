# S3 Bucket configuration
resource "aws_s3_bucket" "website" {
  bucket = var.bucket_name
  region = var.region

  website {
    index_document = var.ownership_proof_path
    error_document = "privacy.html"
  }

  tags = {
    Environment = "dev"
    Project     = "devops-internship"
  }
}

# Public access block configuration
resource "aws_s3_bucket_public_access_block" "website" {
  bucket = aws_s3_bucket.website.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Origin Access Identity for CloudFront
resource "aws_cloudfront_origin_access_identity" "origin" {
  comment = "OAI for ${var.bucket_name}"
}

# Grant read permissions to OAI on S3 bucket
resource "aws_s3_bucket_policy" "website_policy" {
  bucket = aws_s3_bucket.website.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = {
          AWS = aws_cloudfront_origin_access_identity.origin.iam_arn
        }
        Action   = "s3:GetObject"
        Resource = "${aws_s3_bucket.website.arn}/*"
      }
    ]
  })
}

# CloudFront distribution
resource "aws_cloudfront_distribution" "website" {
  origin {
    domain_name = aws_s3_bucket.website.bucket_regional_domain_name
    origin_id   = "S3-${var.bucket_name}"

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.origin.cloudfront_access_identity_path
    }
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "DevOps Internship Website"
  price_class         = "PriceClass_100"

  # Default cache behavior
  default_cache_behavior {
    target_origin_id = "S3-${var.bucket_name}"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods  = ["GET", "HEAD", "OPTIONS"]
    cached_methods   = ["GET", "HEAD"]

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  # Custom error responses
  custom_error_response {
    error_code            = 404
    response_code         = 200
    response_page_path    = "/${var.ownership_proof_path}"
  }

  custom_error_response {
    error_code            = 403
    response_code         = 200
    response_page_path    = "/${var.ownership_proof_path}"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
    minimum_protocol_version       = "TLSv1"
    ssl_support_method             = "sni-only"
  }

  tags = {
    Environment = "dev"
    Project     = "devops-internship"
  }
}