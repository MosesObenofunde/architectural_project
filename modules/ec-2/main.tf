resource "aws_instance" "webserver" {
  ami                    = var.instance_id #"ami-0d5eff06f840b45e9"
  instance_type          = var.instance_type
  availability_zone      = var.az
  vpc_security_group_ids = [var.sg_id]
  subnet_id              = var.subnet_id
  user_data              = file("/mnt/c/Users/ASUS/Documents/amarachi/AWSG-/envs/modules/ec-2/install_apache.sh")

  tags = {
    Name = var.name
  }

}C:\Users\ASUS\Documents\amarachi\AWSG-\envs