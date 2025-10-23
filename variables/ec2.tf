resource "aws_instance" "terraform" {
  ami = var.ami_id
  instance_type = var.instance_type 
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = merge (
    var.ec2_tags,
    var.common_tags,
    {
        Name = "demo-insatance"
        version = "1.0"
    }
  )

}

resource "aws_security_group" "allow_all" {
  name   = var.sg_name

  

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr # Allow from any IP
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr # Allow from any IP
  }

    tags = {
        Name = "allow-all"
    }
}