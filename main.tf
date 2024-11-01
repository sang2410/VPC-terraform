module "vpc" {
  source      = "./module/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}
module "sg" {
  source = "./module/sg"
  vpc_id = module.vpc.vpc_id

}
module "ec2" {
  source           = "./module/ec2"
  instance_type    = var.instance_type
  subnet_id        = module.vpc.subnet_id
  sg_id            = module.sg.sg_id
  instance_keypair = var.instance_keypair
}
module "alb" {
  source = "./module/alb"
  sg_id  = module.sg.sg_id
 subnets = module.vpc.subnet_id
 vpc_id = module.vpc.vpc_id
 instance_id = module.ec2.id_ec2

}