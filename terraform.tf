provider "aws" {
  region  = "ap-south-1"
}
resource "aws_vpc" "myvpc" {
  cidr_block       = "10.0.0.0/16"
  

  tags = {
    Name = "terraformvpc"
  }
}
resource "aws_subnet" "publicsubnet" {
  vpc_id     = "${aws_vpc.myvpc.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public1"
  }

}resource "aws_internet_gateway" "igw" {
   vpc_id = "${aws_vpc.myvpc.id}"

  tags = {
    Name = "internetgw"
  }

}
resource "aws_route_table" "publicrt" {
  vpc_id = "${aws_vpc.myvpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags = {
    Name = "publicroutetable"
  }

}
resource "aws_route_table_association" "publicassociation" {
  subnet_id      = "${aws_subnet.publicsubnet.id}"
  route_table_id = "${aws_route_table.publicrt.id}"

}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  vpc_id      = "${aws_vpc.myvpc.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
resource "aws_instance" "jumpbox"{
  ami                    = "ami-074dc0a6f6c764218"
  instance_type          = "t2.micro"
  key_name               = "Practise"
  vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
  subnet_id              = "${aws_subnet.publicsubnet.id}"
  associate_public_ip_address = true
}

