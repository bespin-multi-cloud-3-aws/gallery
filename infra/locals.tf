locals {
  org       = "gallery"
  project   = "lab"
  namespace = "${local.org}-${local.project}"

  message = "Temporary ${local.namespace}"
}