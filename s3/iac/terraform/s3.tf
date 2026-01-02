resource "aws_s3_bucket" "myS3-bucket" {
  bucket = "terraform-bucketio"

  tags = {
    Name        = "My terraform bucket"
    Environment = "Dev"
  }
}