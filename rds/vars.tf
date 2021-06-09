variable "subnet_group_name" {
  description = "Subnet Group Name"
  type = string
}

variable "subnet1" {
  description = "Private Subnet ID for rds instance"
  type = string
}


variable "subnet2" {
  description = "Private subnet ID for rds instance"
  type = string
}

variable "allocated_storage" {
  default = 20
  description = "Allocated storage of RDS instance"

}

variable "storage_type" {
  default = "gp2"
}

variable "engine" {
  default = "mysql"
}

variable "engine_version" {
  default = "5.7"
}

variable "instance_class" {
  default = "db.t2.micro"
}

variable "username" {
  default = "master"
}

variable "password" {
  default = "master1234"
}

variable "name" {
  default = "db"
}

variable "parameter_group_name" {
  default = "default.mysql5.7"
}

variable "skip_final_snapshot" {
  default = true
}
