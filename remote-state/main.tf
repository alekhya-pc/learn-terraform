resource "null_resource "test" {}

terraform {
    backend "s3" {
        bucket = "b96-terraform"
        key    = "test/terraform.tfstate"
        region = "us-east-1"
        }
    }