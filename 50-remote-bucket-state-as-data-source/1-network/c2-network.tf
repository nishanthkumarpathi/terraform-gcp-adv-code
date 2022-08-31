resource "google_compute_network" "vpc" {
  name                    = "terraform-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "terraform-subnet"
  region        = "us-east1"
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}
