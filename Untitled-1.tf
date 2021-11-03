#--------------------------------------------------------------
# My Terraform
#
# Build WebServer during Bootstrap
#
# Made by Maksat Kurbanv
provider "aws" {
    region = "us-east-2"
}
resource "aws_instance" "my_webserver" {
    ami ="ami-074cce78125f09d61"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.my_webserver_sg.id]
    user_data = file("user_data.sh")
} 

resource "aws_security_group" "my_webserver_sg" {
  name        = "WebServer Security Group"
  description = "My First Security Group"
ingress = [ {
  cidr_blocks = [ "0.0.0.0/0" ]
  description = "HTTP"
  from_port = 80
  ipv6_cidr_blocks = [ "::/0" ]
  prefix_list_ids = [ ]
  protocol = "udp"
  security_groups = [ ]
  self = true
  to_port = 80
} ]

egress = [ {
  cidr_blocks = [ "0.0.0.0/0" ]
  description = "for all outgoing traffics"
  from_port = 0
  ipv6_cidr_blocks = [ "::/0" ]
  prefix_list_ids = [ ]
  protocol = "-1"
  security_groups = [ ]
  self = false
  nahren port
} ]
} 
destroy world !!!!!!
