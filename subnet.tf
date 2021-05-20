
resource "aws_subnet" "vpc_public_subnet_uswest2a" {

  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.vpc_public_subnet_uswest2a_cidr_block
  availability_zone = var.vpc_public_subnet_uswest2a_az
  map_public_ip_on_launch = var.vpc_public_subnet_uswest2a_map_public_ip_on_launch

  tags = {
      Name = var.subnet_name_tag,
      ProductOwner = var.product_owner,
      Developer = var.developer,
      LifeCycle = var.life_cycle
  }
  depends_on = [aws_vpc.vpc]
}