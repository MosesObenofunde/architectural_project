resource "aws_db_instance" "default" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.default.id
  engine                 = "mysql"
  engine_version         = "8.0.20"
  instance_class         = "db.t2.micro"
  multi_az               = true
  name                   = var.name
  username               = var.username
  password               = var.password
  skip_final_snapshot    = true
  vpc_security_group_ids = [var.sg_id]
}

resource "aws_db_subnet_group" "default" {
  name       = "${var.name}-subnet-group"
  subnet_ids = [var.subnet_id1, var.subnet_id2]

  tags = {
    Name = "${var.name}-subnet-group"
  }
}