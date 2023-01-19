resource "azurerm_resource_group" "example" {
  name     = "piprg"
  location = "East US"
  }

resource "azurerm_public_ip" "example" {
  name                = "release-pip1"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
