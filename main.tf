module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
}

module "sg" {
    source = "./modules/sg"
    vpc_id = module.vpc.vpc_id
}

module "ec2" {
    source = "./modules/ec2"
    sg_id = module.sg.sg_id
    subnets = module.vpc.subnets_id
}

module "alb" {
    source = "./modules/alb"
    sg_id = module.sg.sg_id
    subnets = module.vpc.subnets_id
    vpc_id = module.vpc.vpc_id
    instances = module.ec2.instances
}