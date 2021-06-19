terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  profile  = "mine"
}


terraform {
  backend "s3" {
    bucket = "harkesh-terraform-km"
    key    = "terraform-km/main.tf"
    region = "ap-south-1"
    dynamodb_table = "terraform-km"
    profile = "mine"
  }
}
