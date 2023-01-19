resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
  }

resource "azurerm_public_ip" "example" {
  name                = var.pipname
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
}
