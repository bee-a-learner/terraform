
output "api_management_id" {
    value = azurerm_api_management.apim.id
}

output "api_management_name" {
    value = azurerm_api_management.apim.name
}

output "apim_private_ip" {
  value = azurerm_api_management.apim.private_ip_addresses
}