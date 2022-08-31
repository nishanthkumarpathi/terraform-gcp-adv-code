resource "google_compute_instance" "vm" {
  name         = var.vm-name
  machine_type = "f1-micro"
  zone         = "us-east1-b"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
  }
}
