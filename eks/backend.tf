terraform {
  required_version = "~> 1.8.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "bucketforeksproject"
    region         = "us-east-1"
    key            = "my-three-tier-project-cicd/eks/terraform.tfstate"
    dynamodb_table = "dynamodb-table-for-terrafrom-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
