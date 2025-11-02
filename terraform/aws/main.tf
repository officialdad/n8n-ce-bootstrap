terraform {
  required_version = ">= 1.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.19.0"
    }
  }

  # backend "s3" {
  #   bucket = "terraform-singapore-temp-bucket"
  #   key    = "sandbox"
  #   region = "ap-southeast-1"
  # }

}

provider "aws" {
  region = "ap-southeast-1"
}
