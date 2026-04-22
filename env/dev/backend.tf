terraform {
  backend "s3" {
    bucket       = "vandhan-tf-state"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true

  }
}
