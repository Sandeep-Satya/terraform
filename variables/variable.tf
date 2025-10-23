variable "ami_id" {
  default     = "ami-0010e59c10a9625a8"
  type       = string
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "terraform-demo"
        environment = "dev"
    }
}

variable "common_tags" {
    type = map
    default = {
        terraform = true
         environment = "prod"
        project = "join-devops"
    }
}

variable "sg_name" {
  type = string   
  default = "allow-all"
  description = "sg name to attach to ec2 instance"
  
}

variable "cidr" {
  type = list
  default = ["0.0.0.0/0"]
  description = "cidr block to allow all traffic"
}

variable "ingress_from_port" {
  default = 0
}

variable "ingress_to_port" {
  
  default = 0
}

variable "egress_from_port" {
  
  default = 0
}

variable "egress_to_port" {
  
  default = 0
}

variable "protocol" {
  type = string
  default = "-1"
}