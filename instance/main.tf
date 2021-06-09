resource "aws_instance" "instance" {
  ami = var.ami
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_id}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  user_data = "${var.userdata}"
}

