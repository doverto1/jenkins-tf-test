
resource "aws_internet_gateway" "vpc_igw" {
    vpc_id = aws_vpc.vpc.id                                           //Required
    tags = {
        Name = var.vpc_igw_name,
        ProductOwner = var.product_owner,
        Developer = var.developer,
        LifeCycle = var.life_cycle
    }

    depends_on = [
        aws_vpc.vpc
    ]
}