/*resource "aws_s3_bucket" "tf_bucket" {
  bucket = "export-test-vandhan"
}*/

module "logs_bucket"{
  source = "../../modules/s3"

  bucket_name = "dev-logs-bucket"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}