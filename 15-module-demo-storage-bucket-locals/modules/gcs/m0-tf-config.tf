# Block-1: Terraform Settings Block
terraform {
  required_version = ">= 1.2.0"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.33.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
  }  
}

resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
}