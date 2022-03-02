output "blackbox-public-ip" {
  value = aws_instance.blackbox-server.*.public_ip
}

# output "elastic-ip" {
#   value = aws_eip.eip.public_ip
# }