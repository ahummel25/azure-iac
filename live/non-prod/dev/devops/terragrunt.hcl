terraform {
  source = "../../../../modules//devops"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

inputs = {
  org_service_url       = get_env("AZDO_ORG_SERVICE_URL")
  personal_access_token = get_env("AZDO_PERSONAL_ACCESS_TOKEN")
}
