
resource "azurerm_api_management" "apim" {
    location                  = var.location
    name                      = var.apim_name 
    publisher_email           = var.publisher_email
    publisher_name            = var.publisher_name
    resource_group_name       = var.resource_group_name
    sku_name                  = var.sku_name 
    tags                      = var.tags
    virtual_network_type      = var.virtual_network_type 


  identity {
        type         =   "SystemAssigned"
    }

    protocols {
        enable_http2 = false
    }

    sign_up {
        enabled = false

        terms_of_service {
            consent_required = false
            enabled          = false
        }
    }

    dynamic "virtual_network_configuration" {
        for_each = var.virtual_network_type=="Internal"?[1]:[]
        content {
            subnet_id = var.apim_subnet_id 
        }
    }

    lifecycle {
      ignore_changes = [hostname_configuration]
    }
    depends_on = [ azurerm_api_management.apim ]
}


