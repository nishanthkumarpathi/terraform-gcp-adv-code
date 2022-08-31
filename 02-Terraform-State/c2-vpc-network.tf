resource "google_compute_network" "vpc_network" {
  name                    = "hr-network"
  auto_create_subnetworks = "true"
}