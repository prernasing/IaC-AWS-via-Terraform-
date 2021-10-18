#with variable defined in it

provider "aws" {
    region = var.region
    secret_key = var.secret_key
    access_key = var.access_key
}

resource "aws_instance" "my_ec2"{
    ami = var.ami
    instance_type = var.instance_type
    count = var.instance_count
    security_groups = [aws_security_group.my_sg.name]
    availability_zone = var.availability_zone 
tags = {
      env = "dev"
    }
}
resource "aws_default_vpc" "my_vpc" {
    tags = {
        vpc = "default"
    }
    
}
