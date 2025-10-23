resource "aws_security_group" "robo_shop_instance" {
  name   = "roboshop-first-sg"
  

  egress {
    from_port        = 0 # Allow all outbound traffic
    to_port          = 0
    protocol         = "-1" # All protocols
    cidr_blocks      = ["0.0.0.0/0"] # Allow from any IP
  }

  dynamic "ingress" {
    for_each = toset(var.ingress_port)
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
}

#   ingress {
#     from_port        = 0 # Allow all inbound traffic
#     to_port          = 0
#     protocol         = "-1" # All protocols
#     cidr_blocks      = ["0.0.0.0/0"] # Allow from any IP
#   }

    tags = {
        Name = "roboshop-first-sg"
    }
}