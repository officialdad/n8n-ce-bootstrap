terraform {
  required_version = "~> 1.13.0"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.66.0"
    }
  }

  #   backend "s3" {
  #   endpoints = {
  #     s3 = "https://sgp1.digitaloceanspaces.com"
  #   }
  #   key                         = "terraform.tfstate"
  #   bucket                      = "do-tfstate"
  #   region                      = "us-east-1"
  #   skip_requesting_account_id  = true
  #   skip_credentials_validation = true
  #   skip_region_validation      = true
  #   skip_metadata_api_check     = true
  #   skip_s3_checksum            = true
  # }
}

variable "do_token" {
  type      = string
  sensitive = true
}

provider "digitalocean" {
  token = var.do_token
}
