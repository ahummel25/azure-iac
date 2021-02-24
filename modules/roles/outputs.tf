output "id" {
  description = "The ID of the built-in Role Definition."
  value       = data.azurerm_role_definition.owner.id
}

output "owner_description" {
  description = "The Description of the built-in Role."
  value       = data.azurerm_role_definition.owner.description
}

output "owner_id" {
  description = "The ID of the built-in Role."
  value       = data.azurerm_role_definition.owner.id
}

output "principal_type" {
  description = "The principal_type."
  value       = azurerm_role_assignment.owner_assignment.principal_type
}

output "subscription" {
  description = "The subscription"
  value       = data.azurerm_subscription.primary.id
}

output "type" {
  description = "The type of role."
  value       = data.azurerm_role_definition.owner.type
}

output "user_display_name" {
  description = "The display name of the user."
  value       = data.azuread_user.admin_user_master.display_name
}
