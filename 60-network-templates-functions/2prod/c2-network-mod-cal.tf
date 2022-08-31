module "network" {
  source = "../modules/networking"
  environment = "prod"
  cidr_range = "10.0.0.0/8"
  regions = ["us-central1", "us-east1", "us-east4"]
  //regions = ["us-central1", "us-east1", "us-east4", "us-west1"]
  subnet_size = 24
}