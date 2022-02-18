module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "US_AWS-Explore+Landing-Zone-Accelerator@pwc.com"
    AccountName               = "PwC Explore - Landing Zone Accelerator"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "godwin.p.k@pwc.com"
    SSOUserFirstName          = "Godwin"
    SSOUserLastName           = "K"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox_test"
}
