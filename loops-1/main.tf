#here we are just creating a null resource and trying to iterate it for 3 times
resource "null_resource" "test" {
    count = 3  # in real time count is not at all referred to use. so, for iteration go with for_each concept.
    }

variable "components" {
    default = ["frontend" , "catalogue" , "mongo"]
    }
resource "null_resource" "test1" {
    count = length(var.components)
    }