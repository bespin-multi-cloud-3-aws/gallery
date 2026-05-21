locals {
  org       = "gallery-1"
  project   = "lab01"
  namespace = "${local.org}-${local.project}"

  github_repo = "bespin-multi-cloud-3-aws/gallery"

  iamrole = {
    name       = "gha1"
    policy_arn = data.aws_iam_policy.admin_access.arn
  }

  iamoidcp = {
    name            = "gha-1"
    url             = "https://token.actions.githubusercontent.com"
    client_id_list  = ["sts.amazonaws.com"]
    thumbprint_list = ["ffffffffffffffffffffffffffffffffffffffff"]
  }
}