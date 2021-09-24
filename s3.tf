resource "aws_s3_bucket" "s3-bucket" {
    bucket = "thyl-tfstate-store"
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
    tags = {
        Name = "S3 Remote Terraform State Store"
    }
}