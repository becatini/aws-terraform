resource "aws_instance" "web" {
  count = length(var.ec2_names)
  ami = data.aws_ami.amazon-2.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]
  subnet_id = var.subnets[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  key_name = "mig-account-us-east-1-key"

  user_data = <<EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl start httpd
  EOF

  tags = {
    Name = var.ec2_names[count.index]
  }
}