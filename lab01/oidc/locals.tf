locals {
  org       = "gallery-1"
  project   = "lab01"
  namespace = "${local.org}-${local.project}"

  github_repo = "bespin-multi-cloud-3-aws/gallery"

  iamrole = {
    name       = "gha"
    policy_arn = data.aws_iam_policy.admin_access.arn
  }

  iamoidcp = {
    name            = "gha"
    url             = "https://token.actions.githubusercontent.com"
    client_id_list  = ["sts.amazonaws.com"]
    thumbprint_list = ["ffffffffffffffffffffffffffffffffffffffff"]
  }
}