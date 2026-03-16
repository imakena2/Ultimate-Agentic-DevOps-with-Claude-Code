output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.website.bucket
}

output "bucket_website_endpoint" {
  description = "S3 website endpoint"
  value       = aws_s3_bucket.website.website_endpoint
}

output "cloudfront_domain_name" {
  description = "CloudFront distribution domain name"
  value       = aws_cloudfront_distribution.website.domain_name
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID"
  value       = aws_cloudfront_distribution.website.id
}

output "origin_access_identity" {
  description = "Origin Access Identity for CloudFront"
  value       = aws_cloudfront_origin_access_identity.origin.cloudfront_access_identity_path
}