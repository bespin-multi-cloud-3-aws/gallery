locals {
  org       = "gallery"
  project   = "lab03"
  namespace = "${local.org}-${local.project}"

  vpc = {
    name = "main"

    cidr_block           = "10.0.0.0/16"
    enable_dns_support   = true
    enable_dns_hostnames = true
  }
}