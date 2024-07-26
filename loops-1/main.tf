#here we are just creating a null resource and trying to iterate it for 3 times
resource "null_resource" "test" {
    count = 3
    }

variable "components" {
    default = ["frontend" , "catalogue" , "mongo"]
    }
resource "null_resource" "test1" {
    count = length(var.components)
    }