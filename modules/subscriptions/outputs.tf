output "current_subscription_display_name" {
  description = "The subscription name"
  value       = data.azurerm_subscription.current.display_name
}
