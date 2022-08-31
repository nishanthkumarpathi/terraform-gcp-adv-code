resource "local_file" "CIPs" {
    filename = "./manifest_outputcsv"
    content = templatefile("manifest.tftpl", { ip_addrs = module.vm.*.ip })
}

resource "local_file" "AIPs" {
    filename = "./inventory_output" # Can be used for Ansible for Configuration Management
    content = templatefile("inventory.tmpl", { ip_addrs = module.vm.*.ip })
}

