module "vpc" {
  source      = "./module/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}
module "sg" {
  source = "./module/sg"
  vpc    = module.vpc.vpc
}
module "ec2" {
  source = "./module/ec2"
  sg     = module.sg.sg
  subnet = module.vpc.subnet
}
