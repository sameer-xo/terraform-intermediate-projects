provider "aws" {
  region = "us-east-1"
}

# Create a security group
resource "aws_security_group" "my_sg" {
  name_prefix = "my-security-group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow SSH access from any IP
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }
}

# Launch an EC2 instance
resource "aws_instance" "my_instance" {
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.my_sg.id]  # Use ID instead of name
}
