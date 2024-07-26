data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}

output "aws_ami" {
    value = data.aws_ami.example
    }