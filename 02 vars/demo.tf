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