terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }
  backend "s3" {
    bucket = "bucket-645-nuzat1"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "table-645-nuzat1"
  }
}
