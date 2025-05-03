module "github_oidc_role_variable" {
  source = "github.com/bitterbridge/terraform-modules//terraform/modules/github_oidc_role_variable"

  for_each = toset(keys(module.repositories.repositories))

  aws_account_id  = data.aws_caller_identity.current.account_id
  iam_role_arn    = module.github_oidc.oidc_role
  repository_name = each.key
}
