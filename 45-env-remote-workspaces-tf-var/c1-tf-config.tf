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

  cloud {
    organization = "hashicorp-workshop-demo"
    workspaces {
      name = "devws"
    }
  }
}

# Block-2: Provider Block
provider "google" {
  project = "student100"
  # This is Terraform Variable Configuration in Cloud.
  # with the Same Key you need to Create Credentials in Terraform Workspace
  credentials = var.gcp-creds
}

variable "gcp-creds" {
  default = ""
}
