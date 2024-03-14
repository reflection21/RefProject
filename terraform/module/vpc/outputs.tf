output "vpc" {
  value = aws_vpc.vpc.id
}
output "subnet" {
  value = aws_subnet.subnet.id
}
