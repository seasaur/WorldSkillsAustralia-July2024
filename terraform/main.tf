terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.34.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket         = "seasea"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "seasea"
  }
}
