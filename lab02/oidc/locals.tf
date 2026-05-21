locals {
  org       = "gallery-2"
  project   = "lab02"
  namespace = "${local.org}-${local.project}"

  github_repo = "jeongbeen1-svg/Terraform-repo"

  iamrole = {
    name       = "gha"
    policy_arn = data.aws_iam_policy.admin_access.arn
  }

  iamoidcp = {
    name            = "gha-1"
    url             = "https://token.actions.githubusercontent.com"
    client_id_list  = ["sts.amazonaws.com"]
    thumbprint_list = ["ffffffffffffffffffffffffffffffffffffffff"]
  }
}