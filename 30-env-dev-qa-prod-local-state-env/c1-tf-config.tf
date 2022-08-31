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

  /* 

  As you cant maintain te same state file for multiple environments,
  using local backend. We have two solutions
  1. Use an Adhoc Command for Each Deployment for maintaining the state file name
     ** When using Adhoc Command, dont use the local backend config in the c1-tf-config.tf file**
  2. Use a Remote State Storage for maintaining the state file names, which are default supported

  */

  # backend "local" {
  #   path = "default-env.tfstate"
  # }

  # terraform apply -auto-approve -var-file=dev.tfvars -state-out=dev.tfstate
  # terraform destroy -auto-approve -var-file=dev.tfvars -state=dev.tfstate

  # terraform apply -auto-approve -var-file=qa.tfvars -state-out=qa.tfstate
  # terraform destroy -auto-approve -var-file=qa.tfvars -state=qa.tfstate

  # terraform apply -auto-approve -var-file=prod.tfvars -state-out=prod.tfstate
  # terraform destroy -auto-approve -var-file=prod.tfvars -state=prod.tfstate
  
}

# Block-2: Provider Block
provider "google" {
  project = "student100"
}
