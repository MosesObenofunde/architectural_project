module "sg" {
  source            = "../modules/sg"
  database_sg_name  = var.rds_name
  web_sg_name       = var.web_sg_name
  webserver_sg_name = var.webserver_sg_name
  vpc_id            = module.vpc.vpc_id
}