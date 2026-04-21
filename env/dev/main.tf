resource "aws_instance" "myec2"{
    ami = "ami-076d128fb049922d4"
    instance_type = "t3.micro"
    tags = {
        Name= "Sample EC2"
    }
}

resource "aws_s3_bucket" "tf_bucket" {
  bucket = "import-test-vandhan"
}