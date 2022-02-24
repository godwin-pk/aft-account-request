# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "us_aws-control-tower-accelerator+AFT-Account_custom01@pwc.com"
    AccountName  = "sandbox-account-01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox (ou-1a17-rs08e5ec)"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "godwin.p.k@pwc.com"
    SSOUserFirstName = "Godwin"
    SSOUserLastName  = "K"
  }

  account_tags = {
    "Owner"       = "godwin.p.k@pwc.com"
  }

   change_management_parameters = {
    change_requested_by = "godwin PK"
    change_reason       = "testing the account vending process"
  }



  account_customizations_name = "sandbox01"
}
