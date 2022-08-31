locals {
    bucket_name_random = "${var.bucket_name}${random_string.myrandom.id}"
}