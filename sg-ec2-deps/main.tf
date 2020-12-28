provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "mysg" {
    name = "Allow sg"
    ingress {
        from_port=443
        to_port=443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port=443
        to_port=443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

output "name" {
    value = aws_security_group.mysg.name
}