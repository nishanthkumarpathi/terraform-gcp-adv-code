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

}

/* 
* Authentication for the Google Cloud from Terraform Cloud will happen based on Evironment Variables.

We create Environment variable named GOOGLE_CREDENTIALS in Terraform Cloud and for value we put the output of your JSON file but without tabs and new lines.

For example the output of cat file.json | jq -c.

*/