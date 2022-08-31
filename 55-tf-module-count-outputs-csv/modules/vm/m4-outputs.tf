output "ip" {
    value = resource.google_compute_instance.vm.network_interface.0.network_ip
}