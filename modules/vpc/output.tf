output "vpc_id" {
    value = aws_vpc.my-vpc.id
}

output "subnets_id" {
    value = aws_subnet.subnets.*.id
}