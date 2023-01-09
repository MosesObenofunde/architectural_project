output "vpc_id" {
  value = aws_vpc.my-vpc.id
}

output "subnet_id1" {
  value = aws_subnet.web-subnet-1.id
}

output "subnet_id2" {
  value = aws_subnet.web-subnet-2.id
}