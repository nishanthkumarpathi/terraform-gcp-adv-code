resource "google_compute_instance" "web" {
  name = var.name
  machine_type = var.machine
  zone = var.zonename
  network_interface {
      network = "default"
      access_config {}
  }
  boot_disk {
      initialize_params {
          image = "debian-cloud/debian-11"
      }
  }
  
  tags = ["web"]
}
