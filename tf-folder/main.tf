variable "subscription_id" {
  description = "Azure subscription ID"
  default     = "e3f1ea18-d024-4faa-9083-7c2a138bfc85"
}

variable "location" {
  description = "Azure region for the resource groups"
  type        = list(string)
  default     = ["eastus", "westus", "centralus"]
}

variable "resource_group_names" {
  description = "List of names for the resource groups"
  type        = list(string)
  default     = ["rg-test1", "rg-test2", "rg-test3"] # Add more names as needed
}

resource "azurerm_resource_group" "example" {
  count    = length(var.resource_group_names)
  name     = var.resource_group_names[count.index]
  location = var.location[count.index]
}