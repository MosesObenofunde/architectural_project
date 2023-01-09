module "network" {
  source     = "../modules/nat"
  name       = var.network_name
  subnet_id1 = module.vpc.subnet_id1
  subnet_id2 = module.vpc.subnet_id2
  vpc_id     = module.vpc.vpc_id
}