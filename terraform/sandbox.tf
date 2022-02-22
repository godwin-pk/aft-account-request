module "sandbox_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "us_aws-control-tower-accelerator+AFT-Account10@pwc.com"
    AccountName               = "sandbox_account_01"
    ManagedOrganizationalUnit = "Sandbox (ou-1a17-rs08e5ec)"
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

  account_customizations_name = "development_customization"
}
