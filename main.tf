data "azurerm_key_vault" "keyvault" {
  name                = "Devops123keyV"
  resource_group_name = "AJ"
}


resource "azurerm_key_vault_secret" "secrets" {
  name         = "username"
  value        = "Devopsinsiders"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}

# This Terraform configuration retrieves an existing Azure Key Vault and stores a secret in it.
# The Key Vault is identified by its name "Devops123keyV" in the resource group "AJ".
# A secret named "username" with the value "Devopsinsiders" is added to the Key Vault.
