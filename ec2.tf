## EC2 resource creation template

resource "aws_instance" "monitor-server" {
  ami             = var.ami_id
  key_name        = var.ssh_key
  instance_type   = var.monitor_instance_type
  security_groups = [aws_security_group.monitor_sg.id]
  subnet_id       = var.subnet_id
  user_data       = data.template_file.monitoring_installation.template
  # iam_instance_profile = aws_iam_instance_profile.access_profile.name

  tags = {
    Name        = "${var.monitor_tag_name}"
    Environment = "${var.monitor_environment}"
    Application = "${var.application}"
  }
}

# resource "aws_eip" "eip" {
#   instance = aws_instance.monitor-server.id
#   vpc      = true
# }