data "aws_ami" "satyadevops" {
    owners       =  ["973714476881"]
    most_recent =    true

    filter {
      name   = "name"
      values = ["RHEL-9-DevOps-Practice"]
    } 
    filter {
      name   = "robo-device-type"
      values = ["ebs"]
    }

    filter {
      name   = "Virtualization-type"
      values = ["hvm"]
    }
}

 output "ami_id" {
   value = data.aws_ami.satyadevops.id
 }

# data "aws_instance" "mongodb" {
#       instance_id = "i-0a67bd819192b74bf"
# }

# output "mongodb_info" {
#     value = data.aws_instance.mongodb.public_ip
#     }