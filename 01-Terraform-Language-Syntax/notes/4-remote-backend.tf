# Block-1: Terraform Settings Block
terraform {
  required_version = ">= 1.2.0"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.33.0"
    }
  }
# Terraform State Storage to Google Cloud Storage Bucket
  backend "gcs" {
    bucket = "tf-state-bucket"
    prefix = "terraform/state"
  }
}

provider "google" {
    # Configuration options
}