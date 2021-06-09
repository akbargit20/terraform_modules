resource "aws_db_subnet_group" "subnet-group" {
  name       = "${var.subnet_group_name}"
  subnet_ids = ["${var.subnet1}", "${var.subnet2}"]

}

resource "aws_db_instance" "rds-instance" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  name = var.name
  parameter_group_name = var.parameter_group_name
  db_subnet_group_name = "${aws_db_subnet_group.subnet-group.name}"
  skip_final_snapshot = var.skip_final_snapshot
}

