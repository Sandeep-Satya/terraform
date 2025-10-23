resource "aws_instance" "terraform" {
  ami = ami-0010e59c10a9625a8
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.medium"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = "TerraformExample"
    }
   
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"
  

  egress {
    from_port        = 0 # Allow all outbound traffic
    to_port          = 0
    protocol         = "-1" # All protocols
    cidr_blocks      = ["0.0.0.0/0"] # Allow from any IP
  }

  ingress {
    from_port        = 0 # Allow all inbound traffic
    to_port          = 0
    protocol         = "-1" # All protocols
    cidr_blocks      = ["0.0.0.0/0"] # Allow from any IP
  }

    tags = {
        Name = "allow-all"
    }
}