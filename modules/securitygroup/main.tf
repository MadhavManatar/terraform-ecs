 
data "aws_vpc" "default_vpc" {
    default = true
}

data "aws_subnets" "default_subnet" {
     filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default_vpc.id]
  }
}

resource "aws_security_group" "demosg" {
    name   = var.name
    vpc_id = data.aws_vpc.default_vpc.id

    ingress {
        to_port = 80
        from_port = 80
        protocol = "tcp"
        cidr_blocks = [var.cidr]
    }
    egress {
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = [var.cidr]
    }
}

