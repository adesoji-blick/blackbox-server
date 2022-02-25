data "template_file" "monitoring_installation" {
  template = file("${path.module}/scripts/installations.sh")
}