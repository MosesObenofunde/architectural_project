module "rds" {
  source = "../modules/rds"

  name = var.rds_name

  username = var.username

  password = var.password

  sg_id = module.sg.db_sg_id

  subnet_id1 = module.vpc.subnet_id1

  subnet_id2 = module.vpc.subnet_id2
}