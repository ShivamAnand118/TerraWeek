
resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "my-terraform-state-bucket"
  tags = {
        Name = "my-terraform-state-bucket"
    }
}

resource "aws_dynamodb_table" "terraform_lock_table" {
    name = "my-terraform-lock-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
  }
   tags = {
       Name = "my-terraform-lock-table"
    }
}
