resource "aws_instance" "terraform" {
  for_each = var.instances
  ami = ami-00095e2da1e30c3ab
  instance_type = each.value
  vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = each.key
        terraform = true
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