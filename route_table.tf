resource "aws_route_table" "public_route_table" {
    vpc_id = aws_vpc.vpc.id
    route {
      cidr_block = var.public_route_table_cidr_block
      gateway_id = aws_internet_gateway.vpc_igw.id
    }

    tags = {
        Name = var.public_route_table_name_tag,
        ProductOwner = var.product_owner,
        Developer = var.developer,
        LifeCycle = var.life_cycle
    }
    depends_on = [
      aws_vpc.vpc,
      aws_internet_gateway.vpc_igw
    ]
}

resource "aws_route_table_association" "public_routetable_association_subnet1" {
  subnet_id = aws_subnet.vpc_public_subnet_uswest2a.id
  route_table_id = aws_route_table.public_route_table.id
  depends_on = [
    aws_subnet.vpc_public_subnet_uswest2a,
    aws_route_table.public_route_table
  ]
}
