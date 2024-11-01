# EC2 Instance
resource "aws_instance" "web" {
  count = length(var.ec2_name)
  ami = data.aws_ami.amzlinux2.id
  instance_type =var.instance_type
#   user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids =[var.sg_id]
  associate_public_ip_address = true
  subnet_id =var.subnet_id[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    "Name" = var.ec2_name[count.index]
  }
}
