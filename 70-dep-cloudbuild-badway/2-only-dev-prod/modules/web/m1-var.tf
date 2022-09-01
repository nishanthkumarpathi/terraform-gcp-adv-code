variable "env" {
  description = "The environment being provisioned"
  default = "default"
}

data "template_file" "index" {
    template = file("${path.module}/index.html")
    vars = {
        index_env = var.env
    }
}