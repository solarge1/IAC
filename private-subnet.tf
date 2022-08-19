resource "aws_subnet" "private" {
  count             = "${length(slice(local.az_names, 0, 3))}"
  vpc_id            = "${aws_vpc.my_app.id}"
  cidr_block        = "${cidrsubnet(var.vpc_cidr, 8, count.index + length(local.az_names))}"
  availability_zone = "${local.az_names[count.index]}"
  tags = {
    Name = "ReytsPrivateSubnet-${count.index + 1}"
  }
}

/*
resource "aws_nat_gateway" "nat" {
  connectivity_type = "private"
  subnet_id         ="${local.pri_sub_ids[0]}"
  tags = {
    Name = "ReytsNatGateway"
  }
  
  
}

resource "aws_route_table" "prirt" {
  vpc_id = "${aws_vpc.my_app.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.nat.id}"
  }

  tags = {
    Name = "ReytsPrivateRT"
  }
}

resource "aws_route_table_association" "pri_sub_asociation" {
  count             = "${length(slice(local.az_names, 0, 3))}"
  subnet_id      = "${local.pri_sub_ids[count.index]}"
  route_table_id = "${aws_route_table.prirt.id}"
}

#$ terraform import aws_nat_gateway.private_gw nat-05dba92075d71c408
*/
