resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
}

resource "google_storage_bucket" "mybucket" {
  name          = "${var.bucket_name}-${random_string.myrandom.id}"
  location      = "us-east1"
  force_destroy = true
}