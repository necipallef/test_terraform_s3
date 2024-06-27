data "aws_s3_object" "fpjs-integration-s3-bucket" {
  bucket = "fingerprint-pro-cloudfront-integration"
  key = "v2/lambda_latest.zip"
}

output "bucket" {
  value = data.aws_s3_object.fpjs-integration-s3-bucket.bucket
}

output "key" {
  value = data.aws_s3_object.fpjs-integration-s3-bucket.key
}

provider "aws" {
  region  = "us-east-1"
}

terraform {
  required_version = "~> 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}
