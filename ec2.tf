resource "aws_instance" "linux_instance" {
  ami = var.ec2_ami                                                   //Required
  instance_type = var.ec2_instance_type                               //Required
  
  #if creating a vpc needs to be created
  subnet_id = aws_subnet.vpc_public_subnet_uswest2a.id
  key_name = var.ec2_key
  disable_api_termination = var.disable_api_termination
  user_data = var.ec2_userdata
  tags = {
      Name = var.ec2_name,
      ProductOwner = var.product_owner,
      Developer = var.developer,
      LifeCycle = var.life_cycle
  }
  volume_tags ={
      Name = var.ec2_name,
      ProductOwner = var.product_owner,
      Developer = var.developer,
      LifeCycle = var.life_cycle
  }
  vpc_security_group_ids =[
      aws_security_group.allow_ssh_connections.id
  ]
  
  root_block_device {
      volume_type = var.ec2_volume_type
      volume_size = var.ec2_volume_size
      encrypted = var.volume_encrypted
  }
  depends_on = [
        aws_security_group.allow_ssh_connections,
        # data.aws_subnet.vpc_public_subnet_uswest2a
        #if a subnet needs to be created
        aws_subnet.vpc_public_subnet_uswest2a
      ]  
}