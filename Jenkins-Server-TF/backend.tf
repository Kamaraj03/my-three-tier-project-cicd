terraform {
  backend "s3" {
    bucket         = "bucketforeksproject"
    region         = "us-east-1"
    key            = "my-three-tier-project-cicd/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "dynamodb-table-for-jenkins-terrafrom-state-lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
