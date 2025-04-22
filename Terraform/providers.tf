terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "will-learn-terraform-backend"
    key    = "backstage.tfstate" #dummy key
    region = "us-east-1"
    use_lockfile = true
  }
}

provider "aws" {
  region = "us-east-1"
}