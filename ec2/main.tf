provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0be2609ba883822ec"
    instance_type = "t2.micro"
    security_groups = [data.terraform_remote_state.sg.outputs.name]
}