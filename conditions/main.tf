# conditions in terraform is to pick a value, not about running a block

# resource "aws_route53_record" "frontend" {
#  zone_id = "Z02513163LWSSCN6AOOBU"
#  name    = "test.alekhyab96.online"
#  type    = "A"
#  ttl     = var.ttl # this form is used to give value dynamically i.e when the code is executed it will ask us to enter a value.
#  records = ["1.1.1.1"]
#}

#variable "ttl" {}

# applying condition
# = expression ? TRUE_VAL : FALSE_VAL

resource "aws_route53_record" "frontend" {
  zone_id = "Z02513163LWSSCN6AOOBU"
  name    = "test.alekhyab96.online"
  type    = "A"
  ttl     = var.ttl == "" ? 15 : var.ttl
  records = ["1.1.1.1"]
}

variable "ttl" {}















