resource "google_storage_bucket" "customerbucket" {
  name          = local.bucket_name_random
  location      = var.bucket_location
  force_destroy = true
}