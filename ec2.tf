# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "word" {
  ami                         = "ami-062df10d14676e201"
  instance_type               = "t2.micro"
  key_name                    = "test"
  vpc_security_group_ids      = ["${aws_security_group.tf-sg.id}"]
  subnet_id                   = aws_subnet.tf-sn-1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "My Public Instance"
  }
}

