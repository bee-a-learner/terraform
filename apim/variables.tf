
variable "apim_name" {
  type          = string  
  description   = "api management name"  
}    


variable "resource_group_name" {
  type          = string  
  description   = "api management resource_group_name"
}    

variable "location" {
  type          = string  
  description   = "api management location"  
  #default       = "westeurope"
}    


variable "sku_name" {
  type          = string  
  description   = "api management sku"  
  default       = "Developer_1"
}    

variable "publisher_name" {
  type          = string  
  description   = "api management publisher neam"  
}    

variable "publisher_email" {
  type          = string  
  description   = "api management publisher email"  
}    



variable "apim_user_assigned_identity" {
  type          = string  
  description   = "api management apim_user_assigned_identity"  
  #default       = "dev-portal.nonprod.contoso.com"
} 

variable "developer_portal_host_name" {
  type          = string  
  description   = "api management developer portal host name"  
  #default       = "dev-portal.nonprod.contoso.com"
} 


variable "management_host_name" {
  type          = string  
  description   = "api management management host name"  
  #default       = "management-dev.nonprod.contoso.com"
} 


variable "proxy_host_name" {
  type          = string  
  description   = "api management, proxy host name"  
  #default       = "dev-api.nonprod.contoso.com"
} 

################# Custom domain name configuration ############################
variable "requires_custom_host_name_configuration" {
  type          = bool  
  description   = "true if requires custom host name configuration, otherwise false (default is false)"   
  #default       =  true
} 

variable "wildcard_certificate_key_vault_name" {
  type          = string  
  description   = "keyvault name which holds a certificate to configure apim custom domain"   
} 


variable "wildcard_certificate_key_vault_resource_group_name" {
  type          = string  
  description   = "resource_group name of keyvault which holds a certificate to configure apim custom domain"   
} 

variable "wildcard_certificate_name" {
  type          = string  
  description   = "keyvault certificate name which will be used to configure apim custom domain"  
} 

##############*********************************************************************************************

variable "virtual_network_type" {
  type          = string  
  description   = "api management virtual network type"  
  default       = "Internal"
} 




variable "apim_subnet_id" {
  type          = string  
  description   = "api management virtual network subnet id, (requires if APIM network type is Internal) " 
}


variable "apim_default_policy_path" {
  type = string
  description = "(optional) api management default policy path, if any policy needed to be apply"
  default = ""
}

variable "tags" {
  description   = "api management resource tags"  

  default       = { 
        "Data_Classification" = "Standard"
    }
}