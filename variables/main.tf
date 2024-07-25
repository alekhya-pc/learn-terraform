# Plain variable

# Number
variable "x" {
    default = 10
}

# Boolean
variable "y" {
    default = true
}

# string
variable "z" {
    default = "Hello"
}

# values numbers and booleans need not to be quoted

# output
# Direct values does not require to be accessed with ${}
output "x" {
   value = var.x
}

# Accessing a Variable has a combination with a string then we need to refer the variable with ${}

output "x1" {
    value = "value of x - ${var.z}"
 }