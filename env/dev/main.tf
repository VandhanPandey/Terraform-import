/*resource "aws_s3_bucket" "tf_bucket" {
  bucket = "export-test-vandhan"
}

module "logs_bucket"{
  source = "../../modules/s3"

  bucket_name = "dev-logs-bucket-vandhan"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}*/

module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = "10.0.0.0/16"

  public_subnet_cidrs = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  azs = [
    "eu-central-1a",
    "eu-central-1b"
  ]

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}