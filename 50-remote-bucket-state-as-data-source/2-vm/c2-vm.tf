data "terraform_remote_state" "network" {
    backend = "gcs"
    config = {
        bucket = "bucket-state-backup"
        prefix = "network"
    }
}

resource "google_compute_instance" "vm" {
  name         = "terraform-vm"
  machine_type = "f1-micro"
  zone         = "us-east1-b"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    subnetwork = data.terraform_remote_state.network.outputs.subnet_name
  }
}