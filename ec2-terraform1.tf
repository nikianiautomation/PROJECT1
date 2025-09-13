provider "aws" {
    region = "us-east-1" 
    }
resource "aws_instance" "ec2_example" {
    ami = "ami-0360c520857e3138f"
    instance_type = "t3.micro"
    key_name = "terraform_keypair"
    vpc_security_group_ids = ["sg-0f35ec365aafa7ff9"]
    tags = {
       Name = "ec2_keypair"
    }
}