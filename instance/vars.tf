variable "ami" {
  description = "AMI of instance"
  type = string
}

variable "instance_type" {
  description = "Type of instance"
  type = string
}

variable "subnet_id" {
  description = "Subnet Id in which instance is created"
  type = string
}

variable "instance_name" {
  description = "Name of the instance"
  type = string
}

variable "associate_public_ip_address" {
  description = "Associate public ip or not"
  type = string
}

variable "userdata" {
  description = "User data for the instance"
  type = string
}
