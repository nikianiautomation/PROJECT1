provider "aws" {
    region = "us-east-2" 
    }   


resource "aws_s3_bucket" "s3_object" {
    bucket ="niki-ani1"
    acl = "private"
}