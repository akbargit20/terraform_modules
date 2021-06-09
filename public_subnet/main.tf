resource "aws_subnet" "public-subnet" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.pub_cidr_block}"
  availability_zone = "${var.availability_zone}"

}

resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = "${var.vpc_id}"
}

resource "aws_route_table" "public-subnet-table" {
    vpc_id = "${var.vpc_id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.vpc_igw.id}"
    }
}

resource "aws_route_table_association" "public-igw" {
    subnet_id = "${aws_subnet.public-subnet.id}"
    route_table_id = "${aws_route_table.public-subnet-table.id}"
}
