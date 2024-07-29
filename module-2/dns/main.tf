resource "aws_route53_record" "frontend" {
  zone_id = "Z02513163LWSSCN6AOOBU"
  name    = "test.alekhyab96.online"
  type    = "A"
  ttl     = 15
  records = [var.private_ip]
}

variable "private_ip" {}