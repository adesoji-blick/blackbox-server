provider "aws" {
  profile = var.profile
  region  = var.region
}

terraform {
  backend "s3" {
    bucket = "blick-devops"
    key    = "terraform-backend/blackbox-statefile"
    region = "ca-central-1"
  }
}