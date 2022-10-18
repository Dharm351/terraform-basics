variable "sample" {
    default = "Hello world"
}

output "sample-op" {
    value = var.sample
}

output "sample-op1" {
    value = "value is ${var.sample}"
}

# A variable can be accessed with or without ${} only if the variable is called.
# But incase if it is needed to add with some other strings then we need to use double quotes.
# There is no concept of single quotes. 

variable "number" {
    default =100
}

output "number" {
  value = var.number
}

variable "list" {
    default = [ "AWS", "GCP", "Azure", "DevOps", 100, true, "Dharm", "Singh" ]
}
# Above list can show us that we can put any type of data in one variable defination. 

output "list-op" {
  value = "Welcome to ${var.list[3]} learning and this contain ${var.list[0]} and the learner is ${var.list[6]  var.list[7]}"
} 