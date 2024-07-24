resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0f4639e18c6d65317"]

  tags = {
    Name = "frontend.dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z02513163LWSSCN6AOOBU"
  name    = "frontend.dev.alekhyab96.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0f4639e18c6d65317"]

  tags = {
    Name = "mongo.dev"
  }
}

resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0f4639e18c6d65317"]

  tags = {
    Name = "catalogue.dev"
  }
}


