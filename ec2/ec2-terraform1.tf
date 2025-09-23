provider "aws" {
    region = "us-east-1" 
    }
resource "aws_instance" "ec2_example" {
    ami = "ami-0b09ffb6d8b58ca91"
    instance_type = "m7i-flex.large"
    key_name = "terraform_keypair"
    vpc_security_group_ids = ["sg-0f35ec365aafa7ff9"]
    tags = {
       Name = "ec2_jenkins"
    }
    user_data = file("../resources/jenkins_installation.sh")
}