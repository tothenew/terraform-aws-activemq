terraform {
  backend "s3" {
    bucket  = "generic-terraforms"
    key     = "aws-services/active-mq/main.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}