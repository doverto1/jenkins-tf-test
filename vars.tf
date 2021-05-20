///////////////////// Global ///////////////////////////////////////////////////
data "aws_caller_identity" "current" {}

variable "region" {
  default = "us-west-2"
}
variable "profile" {
  default = ""
}

variable "product_owner" {
  default = "Test Department"
}

variable "developer" {
  default = "doverto1"
}

variable "life_cycle" {
  default = "2020-07-06"
}

////////////////// cloudwatch.tf ///////////////////////////////////////////////
variable "cpu_alarm_name" {
  default = "linux-instance-cpu-alarm"
}

variable "cpu_comparison_operator" {
  default = "GreaterThanOrEqualToThreshold"
}

variable "cpu_evaluation_periods" {
  default = "18"
}

variable "cpu_metric_name" {
  default = "CPUUtilization"
}

variable "cpu_namespace" {
  default = "AWS/EC2"
}

variable "cpu_period" {
  default = "300"
}

variable "cpu_statistic" {
  default = "Maximum"
}

variable "cpu_threshold" {
  default = "20"
}

variable "cpu_alarm_description" {
  default = "This metric monitors ec2 cpu utilization"
}

variable "network_alarm_name" {
  default = "linux-instance-network-alarm"
}

variable "network_comparison_operator" {
  default = "LessThanOrEqualToThreshold"
}

variable "network_evaluation_periods" {
  default = "18"
}

variable "network_metric_name" {
  default = "NetworkIn"
}

variable "network_namespace" {
  default = "AWS/EC2"
}

variable "network_period" {
  default = "300"
}

variable "network_statistic" {
  default = "Maximum"
}

variable "network_threshold" {
  default = "9000"
}

variable "network_alarm_description" {
  default = "This metric monitors ec2 network utilization"
}

////////////////// ec2.tf //////////////////////////////////////////////////////
variable "ec2_ami" {
  default = "ami-003634241a8fcdec0"
}
variable "ec2_instance_type" {
  default = "t2.micro"
}

///////////// AWS<resource><purpose><sub/secondary purpose(optional)> //////////
variable "ec2_name" {
  default = "awsec2test"
}
variable "ec2_key" {
  default = "wpc-dev"
}
////////////// Important set to false to destroy ///////////////////////////////
variable "disable_api_termination" {
  default = false
}
variable "ec2_userdata" {
  default = <<-EOF
                  #!/bin/bash
                  apt-get update
                  
                EOF
}

variable "ec2_volume_type" {
  default = "gp3"
}
variable "ec2_volume_size" {
  default = 8
}

variable "volume_encrypted" {
  default = true
}
////////////////igw.tf /////////////////////////////////////////////////////////
variable "vpc_igw_name" {
  default = "awsvpcec2linuxtest"
}

//////////////// route_table.tf ////////////////////////////////////////////////
variable "public_route_table_cidr_block" {
  default = "0.0.0.0/0"
}

variable "public_route_table_name_tag" {
  default = "awsvpcec2linuxtest Public RouteTable"
}

////////////////// security_groups.tf //////////////////////////////////////////
variable "allow_ssh_connections_name" {
  default = "awstest Allow SSH connections"
}
variable "allow_ssh_connections_description" {
  default = "Allow Public SSH Connections"
}

variable "ssh_ingress_cidr_blocks" {
  default = ["0.0.0.0/0"]
}
variable "ssh_egress_cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "asu_ingress_cidr_blocks" {
  default = [
    "129.219.0.0/16",
    "149.169.0.0/16",
    "209.147.128.0/18",
    "98.177.0.0/16"
  ]
}

///////////////// subnet.tf ////////////////////////////////////////////////////
variable "subnet_name_tag" {
  default = "awsvpcec2linuxtest-public-subnet-2a"
}

variable "vpc_public_subnet_uswest2a_cidr_block" {
  default = "10.0.0.0/24"
}

variable "vpc_public_subnet_uswest2a_az" {
  default = "us-west-2a"
}

variable "vpc_public_subnet_uswest2a_map_public_ip_on_launch" {
  default = true
}

//////////////// vpc.tf ////////////////////////////////////////////////////////
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "vpc_instance_tennancy" {
  default = "default"
}

variable "vpc_enable_dns_hostnames" {
  default = true
}

variable "vpc_name_tag" {
  default = "Default"
}

variable "vpc_name" {
  default = "awsvpcec2linuxtest"
}
