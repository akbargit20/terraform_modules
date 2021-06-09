resource "aws_subnet" "private-subnet" {

  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.pvt_cidr_block}"
  availability_zone = "${var.availability_zone}"

}

