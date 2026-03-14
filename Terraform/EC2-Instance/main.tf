provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "SAMPLE_INSTANCE" {
    ami           = "ami-019715e0d74f695be"
    instance_type = "t2.micro"
}
