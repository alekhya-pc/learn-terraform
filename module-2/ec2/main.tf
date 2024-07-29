resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0f4639e18c6d65317"]

  tags = {
    Name = "test"
  }
}