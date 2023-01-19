data "azurerm_resource_group" "example" {
  name     = "piprg"
  }

resource "azurerm_public_ip" "example" {
  name                = "release-pip1"
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}