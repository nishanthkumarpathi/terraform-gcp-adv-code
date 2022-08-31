module "myvm_1" {
    source = "./modules/vm"

    name = "myvmtest-1"
    zonename = "us-east1-b"
}

module "myvm_2" {
    source = "./modules/vm"

    name = "myvmtest-2"
    machine = "n2-standard-2"
    zonename = "us-east1-b"
}