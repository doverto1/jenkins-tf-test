resource "aws_instance" "myec2" {
  ami           = "ami-03d5c68bab01f3496"
  instance_type = "t2.micro"
}
