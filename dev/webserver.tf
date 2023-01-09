module "webserver1" {
  source        = "../modules/ec-2"
  instance_id   = "ami-0d5eff06f840b45e9"
  name          = var.webserver1_name
  instance_type = "t2.micro"
  az            = var.az1
  sg_id         = module.sg.webserver_sg_id
  subnet_id     = module.vpc.subnet_id1
}

module "webserver2" {
  source        = "../modules/ec-2"
  instance_id   = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
  name          = var.webserver2_name
  az            = var.az2
  sg_id         = module.sg.webserver_sg_id
  subnet_id     = module.vpc.subnet_id2
}