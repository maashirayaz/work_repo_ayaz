provider "azurerm" {
 features {}
 subscription_id = "e3f1ea18-d024-4faa-9083-7c2a138bfc85"
 tenant_id  = "45b06557-8a2f-43f9-bd8b-1881de361481"
  }

terraform {
    backend "azurerm" {
        resource_group_name  = "rg-ayaz-testenv-0623"
        storage_account_name = "sttstenvayazdata0723"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
        access_key           = "85Fp1QjLE9vJKLroZjVH5TQ11TpLEoHJazVYlrA3YeoOPAxL/M/4UofNTre/iixD+dtbB2Jc1kBE+AStcZpa9w=="
    }
}