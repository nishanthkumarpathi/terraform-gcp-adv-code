## Automating Deployments to GCP with Terraform

### Introduction

You are a DevOps engineer at a company that is moving to automated deployments using Infrastructure as Code (IaC). The organization has embraced Terraform modules to develop reusable solutions, and wants to leverage common modules across environments to maintain consistency. You will need to set up a solution using Source Repositories and Cloud Build to automate the deployment of infrastructure using Terraform. The solution will need to support development and production branches and deploy separate infrastructure for each branch. That way, changes can be promoted from development to production entirely in version control.

### Prerequisites

In the Cloud Shell terminal, enable the APIs for Cloud Source Repositories, Cloud Build, and IAM:

```bash
gcloud services enable sourcerepo.googleapis.com cloudbuild.googleapis.com iam.googleapis.com
```