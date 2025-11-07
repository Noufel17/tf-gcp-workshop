module "my_network" {
  source = "./modules/network"

  vpc_name     = var.vpc_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  region       = var.region
  zone         = var.zone
}


module "my_gce_instance" {
  source = "./modules/gce-instance"

  instance_name = var.instance_name
  zone          = var.zone
  machine_type  = var.machine_type
  vpc           = module.my_network.vpc_id
  subnet       = module.my_network.subnet_id
  tags          = var.network_tags
  os_image      = var.os_image
}