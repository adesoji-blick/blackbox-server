output "instance-public-ip" {
  value = aws_instance.monitor-server.*.public_ip
}

# output "elastic-ip" {
#   value = aws_eip.eip.public_ip
# }