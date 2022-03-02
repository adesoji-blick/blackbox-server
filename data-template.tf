data "template_file" "blackbox_installation" {
  template = file("${path.module}/scripts/installations.sh")
}