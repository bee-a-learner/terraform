
resource "azurerm_api_management_policy" "policy" {
  count = var.apim_default_policy_path==""?0:1
  api_management_id = azurerm_api_management.apim.id
  xml_content       = file(var.apim_default_policy_path)
}