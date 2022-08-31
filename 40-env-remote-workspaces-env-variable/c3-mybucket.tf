resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
}

resource "google_storage_bucket" "mybucket" {
  name          = "${terraform.workspace}-${random_string.myrandom.id}"
  location      = "us-east1"
  force_destroy = true
}