terraform {
  backend "s3" {
    bucket = "YOUR_BUCKET_NAME"
    key    = "YOUR_PATH/terraform.tfstate"
    region = "YOUR_BUCKET_"
    dynamodb_table = "terraform-state"
  }
}


resource "aws_dynamodb_table" "terraform-state" {
 name           = "terraform-state"
 read_capacity  = 20
 write_capacity = 20
 hash_key       = "LockID"

 attribute {
   name = "LockID"
   type = "S"
 }
}