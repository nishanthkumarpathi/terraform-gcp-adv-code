resource "google_compute_firewall" "web-server" {
  name = "default-allow-http-${var.env}"
  network = "default"
  allow {
      protocol = "tcp"
      ports = ["80"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["web"]
}