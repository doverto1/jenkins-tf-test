resource "aws_security_group" "allow_ssh_connections" {
  name = var.allow_ssh_connections_name
  description = var.allow_ssh_connections_description
  
  #if you have to create a VPC.
  vpc_id = aws_vpc.vpc.id
  ingress {
    from_port   = 22                                                  //Required
    to_port     = 22                                                  //Required
    protocol    = "tcp"                                               //Required
    cidr_blocks = var.ssh_ingress_cidr_blocks
  }

  egress {
    from_port   = 0                                                   //Required
    to_port     = 0                                                   //Required
    protocol    = -1                                                  //Required
    cidr_blocks = var.ssh_egress_cidr_blocks
  }

  tags = {
    Name = var.allow_ssh_connections_name,
    ProductOwner = var.product_owner,
    Developer = var.developer,
    LifeCycle = var.life_cycle,
    Parent = var.vpc_name_tag
  }

  depends_on = [
    
    #if you have to create a vpc
    aws_vpc.vpc
  ]
}
