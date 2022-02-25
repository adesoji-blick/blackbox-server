provider "aws" {
  profile = var.profile
  region  = var.region
}

terraform {
  backend "s3" {
    bucket = "blick-devops"
    key    = "blick-devops/terraform-backend/jenkins-statefile"
    region = "ca-central-1"
  }
}