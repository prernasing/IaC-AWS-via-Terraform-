resource "aws_security_group" "my_sg"{
    name = "my_sg"
    vpc_id = aws_default_vpc.my_vpc.id
    ingress {
        description = "inbound rules"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [aws_default_vpc.my_vpc.cidr_block]

      }
    egress {
          description = "outbound rules"
          from_port = 0
          to_port = 0
          protocol = "tcp"
          cidr_blocks = [aws_default_vpc.my_vpc.cidr_block]

      }

    tags = {
          name = "terraform_sg"
      }

}
