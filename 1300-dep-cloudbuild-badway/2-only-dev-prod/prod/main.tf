# Before you Start, we need a GCS Bucket to Store the State File
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
    backend "gcs" {
      bucket = "bucket-state-backup"
      prefix = "prod"
  }
}

# Block-2: Provider Block
provider "google" {
  project = "student100"
  //region  = "us-east1"

}

module "web_app" {
  source = "../modules/web"
  env = "prod"
}

output "ip" {
  value = module.web_app.web_server_ip
}