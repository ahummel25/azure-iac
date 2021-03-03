variable "org_service_url" {
  description = "The Azure DevOps organization url."
  sensitive   = true
  type        = string
}


variable "personal_access_token" {
  description = "The Azure DevOps organization personal access token."
  sensitive   = true
  type        = string
}
