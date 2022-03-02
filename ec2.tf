## EC2 resource creation template

resource "aws_instance" "blackbox-server" {
  ami             = var.ami_id
  key_name        = var.ssh_key
  instance_type   = var.instance_type
  security_groups = [aws_security_group.blackbox_sg.id]
  subnet_id       = var.subnet_id
  user_data       = data.template_file.blackbox_installation.template
  # iam_instance_profile = aws_iam_instance_profile.access_profile.name

  tags = {
    Name        = "${var.tag_name}"
    Environment = "${var.environment}"
    Application = "${var.application}"
  }
}

# resource "aws_eip" "eip" {
#   instance = aws_instance.blackbox-server.id
#   vpc      = true
# }