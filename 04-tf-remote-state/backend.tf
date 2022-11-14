terraform {
  backend "s3" {
    bucket = "bucket-for-tf-state"
    key    = "demo/env/terraform.tfstat"
    region = "us-east-1"
  }
}