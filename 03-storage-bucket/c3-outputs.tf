output "google_storage_bucket_name" {
  value = google_storage_bucket.website_gcs.name
  description = "Google Storage Bucket Name"
}