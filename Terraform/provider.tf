provider "aws" {
  region =var.region

    default_tags {
    tags = {
     Environment = var.name
     Class   = "A"
     Version = "V2.3"
     Purpose = "Amazon"
    }
  }
}
