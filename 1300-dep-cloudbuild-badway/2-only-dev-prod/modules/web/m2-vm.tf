resource "google_compute_instance" "web" {
  name = "web-server-${var.env}"
  machine_type = "f1-micro"
  zone = "us-east1-b"
  network_interface {
      network = "default"
      access_config {}
  }
  boot_disk {
      initialize_params {
          image = "debian-cloud/debian-11"
      }
  }
  metadata_startup_script = <<SCRIPT
    sudo apt-get update
    sudo apt-get install apache2 -y
    cat <<EOF > /var/www/html/index.html
    ${data.template_file.index.rendered}
  SCRIPT
  
  tags = ["web"]
}