output "web_sg_id" {
  value = aws_security_group.web-sg.id
}

output "db_sg_id" {
  value = aws_security_group.database-sg.id
}

output "webserver_sg_id" {
  value = aws_security_group.webserver-sg.id
}