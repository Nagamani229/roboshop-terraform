terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}


terraform {
  backend "s3" {
    bucket = "devopstraining-state-remote"
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "devopstraining-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}