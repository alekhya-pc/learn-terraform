variable "instance_type" {
    default = "t3.small"
 }

variable "domain_name" {
     default = "alekhyab96.online"
  }

variable "components" {
    default = ["frontend" , "mongo" , "catalogue"]
  }