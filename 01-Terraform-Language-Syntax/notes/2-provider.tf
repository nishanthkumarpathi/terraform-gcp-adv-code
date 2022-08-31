# Block-1: Terraform Settings Block
terraform {
  required_version = ">= 1.2.0"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.33.0"
    }
  }
  
}

# Block-2: Resource Block
provider "google" {
  # Configuration options
}