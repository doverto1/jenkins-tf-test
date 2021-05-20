resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr_block
  instance_tenancy = var.vpc_instance_tennancy
  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  tags = {
      Name = var.vpc_name,
      ProductOwner = var.product_owner,
      Developer = var.developer,
      LifeCycle = var.life_cycle
  }
}
