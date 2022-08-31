resource "random_string" "myrandom" {
  length = 16
  upper = false 
  special = false
}

resource "google_storage_bucket" "website_gcs" {
  name          = "mybucket${random_string.myrandom.id}"
  location      = "us-east1"
  force_destroy = true
}