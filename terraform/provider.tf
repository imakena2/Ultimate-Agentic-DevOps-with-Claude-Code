terraform {
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.region
}

provider "aws" {
  alias  = "cloudfront"
  region = "us-east-1" # CloudFront requires Ashburn VA zone
}