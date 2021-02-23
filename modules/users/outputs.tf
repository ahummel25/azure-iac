output "mail" {
  description = "The primary email address of the User."
  value       = azuread_user.admin_user.mail
}

output "object_id" {
  description = "The object ID of the User."
  value       = azuread_user.admin_user.object_id
}

output "onpremises_sam_account_name" {
  description = "The on-premise SAM account name of the User."
  value       = azuread_user.admin_user.onpremises_sam_account_name
}

output "onpremises_user_principal_name" {
  description = "The on-premise user principal name of the User."
  value       = azuread_user.admin_user.onpremises_user_principal_name
}
