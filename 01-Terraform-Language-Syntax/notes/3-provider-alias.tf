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

# Block-2: Provider Block
provider "google" {
  alias = "provider1-us-east1"
  region = "us-east1"
  project = "my-project-1"
}

# Block-3: Provider Block Alias
provider "google" {
  alias = "provider2-us-west1"
  region = "us-west1"
  project = "my-project-2"
}