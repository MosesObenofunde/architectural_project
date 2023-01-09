module "vpc" {
  source = "../modules/vpc"
  name   = var.vpc_name
}