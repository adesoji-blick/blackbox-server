## ec2 resource variables
variable "region" {
  default = "ca-central-1"
}

variable "profile" {
  default = "default"
}

variable "ssh_key" {
  default = "monitor-key"
}

variable "ami_id" {
  default = "ami-07140ec01fc325690"
}

variable "instance_type" {
  default = "t2.micro"
}

# variable "iam_role" {
#   default = "ec2.py-access"
# }

variable "instance_count" {
  default = "1"
}

variable "tag_name" {
  default = "blackbox monitoring server"
}

variable "environment" {
  default = "development"
}

variable "application" {
  default = "blackbox monitor stack"
}

## network variables
variable "vpc_id" {
  default = "vpc-0b2dfd4e054dd7e7d"
}

variable "subnet_id" {
  default = "subnet-0dbd96ed273470eb0"
}

## security group variables
variable "sg_name" {
  default = "blackbox server"
}

variable "httpport" {
  default = "22"
}

variable "httpport1" {
  default = "9090"
}

variable "httpport2" {
  default = "9093"
}

variable "httpport3" {
  default = "9100"
}

variable "httpport4" {
  default = "3000"
}

variable "httpport5" {
  default = "9115"
}

variable "ingress_protocol" {
  default = "tcp"
}

variable "httpport6" {
  default = "0"
}

variable "egress_protocol" {
  default = "-1"
}

variable "sg_cidr_block" {
  default = ["0.0.0.0/0"]
}
