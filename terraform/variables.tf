variable "bucket_name" {
  description = "Name for the S3 website bucket"
  default     = "idah-makena-portfolio-2026"
}

variable "region" {
  description = "Primary AWS region for resource deployment"
  default     = "us-west-2"
}

variable "cloudfront_domain" {
  description = "Custom domain for CloudFront distribution"
  default     = "portfolio.example.com"
}

variable "ownership_proof_path" {
  description = "HTML file path containing ownership proof"
  default     = "index.html"
}