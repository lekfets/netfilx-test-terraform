resource "aws_instance" "webserver" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = var.ec2_name_tag
  }
  associate_public_ip_address = true
}