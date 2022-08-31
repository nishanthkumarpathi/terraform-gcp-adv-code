resource "google_compute_network" "vpc" {
  name                    = "${var.environment}-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  count         = length(var.regions)
  name          = "${var.environment}-subnet-${var.regions[count.index]}"
  region        = var.regions[count.index]
  network       = google_compute_network.vpc.name
  ip_cidr_range = cidrsubnet(var.cidr_range, local.newbits, count.index)
}

/* 

cidrsubnet(prefix, newbits, netnum)


* prefix must be given in CIDR notation

* newbits is the number of additional bits with which to extend the prefix. 
For example, if given a prefix ending in /16 and a newbits value of 4, 
the resulting subnet address will have length /20.

* netnum is a whole number that can be represented as a binary integer with no more than newbits binary digits, which will be used to populate the additional bits added to the prefix.

[Refrences](https://www.terraform.io/language/functions/cidrsubnet)

*/