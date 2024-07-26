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

# List Variable
variable "1" {
    default = [10 , 20 , "abc" , false]
}
# values in the list may not be same datatype

# output
# Direct values does not require to be accessed with ${}
output "x" {
   value = var.x
}

# Accessing a Variable has a combination with a string then we need to refer the variable with ${}

output "x1" {
    value = "value of x - ${var.z}"
}

output "x2" {
     value = "value of x - ${var.x}"
}

output "l" {
    value = var.l[0]
}
