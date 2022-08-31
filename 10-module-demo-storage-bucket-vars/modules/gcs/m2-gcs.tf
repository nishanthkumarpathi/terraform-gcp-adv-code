resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
}

resource "google_storage_bucket" "customerbucket" {
  name          = "${var.bucket_name}-${random_string.myrandom.id}"
  location      = var.bucket_location
  force_destroy = true
}