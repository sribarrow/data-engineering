terraform {
  required_version = "~> 1.11.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.30.0"  # Replace with your desired version constraint
    }
    ## ..
    }
  }

  provider "aws" {
    region = "eu-west-1"  # Set your desired AWS region
    profile = "default"
}

terraform {
  backend "s3" {
    bucket = "srib-prod"
    key    = "terraform/glue-w-tf.tfstate"
    region = "eu-west-1"
    profile = "default"
  }
}