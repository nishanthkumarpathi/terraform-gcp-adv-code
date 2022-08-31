/*

Uses the split(), element(), length(), and tonumber() Terraform functions
Calculates the newbits value for the cidrsubnet() function argument

*/

locals {
    split_cidr = split("/", var.cidr_range)
    cidr_size = element(local.split_cidr, length(local.split_cidr) - 1)
    newbits = var.subnet_size - tonumber(local.cidr_size)
}