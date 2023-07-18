terraform {
  backend "s3" {
    bucket = "jay-jay-1"
    key = "jay-jay.tfstate"
    region = "us-east-1"
  }
}
