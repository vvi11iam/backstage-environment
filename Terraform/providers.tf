terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "will-learn-terraform-backend"
    # key    = "backstage-${var.environmentName}.tfstate"
    region = "us-east-1"
    use_lockfile = true
    assume_role = {
      role_arn = "arn:aws:iam::163012391439:role/backstage-terraform-backend"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}