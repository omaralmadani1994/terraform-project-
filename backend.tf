terraform {
  backend "s3" {
    bucket = "omar123112312"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "omarDBtable" 
  }
}
