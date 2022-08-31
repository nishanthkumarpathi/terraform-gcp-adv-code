module "vm" {
  source = "./modules/vm"
  vm-name = var.vm_names[count.index]
  count = length(var.vm_names)
}