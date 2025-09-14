provider "aws" {
    region = "us-east-2" 
    }   


resource "aws_s3_bucket" "s3_bucket3" {
    bucket ="niki-ani3"
    acl = "private"
}

resource "aws_s3_bucket_object" "s3_object3" {
    bucket = "niki-ani3"
    key = "jenkins_installation.sh"
    source = "../resources/jenkins_installation.sh"
    etag = filemd5("../resources/jenkins_installation.sh")
}
