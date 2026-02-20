module "repositories" {
  source = "github.com/bitterbridge/terraform-modules//terraform/modules/repositories?ref=v0.0.479"

  organization_name = "bitterbridge"
}

module "organization_basic" {
  source = "github.com/bitterbridge/terraform-modules//terraform/modules/organization_basic?ref=v0.0.479"

  organization_name = "bitterbridge"
  repositories      = keys(module.repositories.repositories)
}
