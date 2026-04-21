resource "aws_s3_bucket" "tf-state"{
    bucket = "vandhan-tf-state"

    lifecycle {
        prevent_destroy = true
    }
}