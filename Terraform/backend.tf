terraform {
  backend "s3" {
    bucket = "simple-deploy-ecs"
    key    = "new/terraform.tfstate"
    region = "eu-west-1"
    dynamodb_table = "LockTable"
  }
}
