terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = "C5AqvRpcTs2lIjdLDDCATA"
  platform_api_key = "pat.C5AqvRpcTs2lIjdLDDCATA.69ea4ed0b7f115030dd85f7e.56xElzLIQQlHuScuHXO1"
}

resource "harness_platform_connector_helm" "helmconn" {
    name      = "HelmConnByTF"
    identifier = "helmconnbytf"
    description = "Created through Terraform"
    url = "https://charts.bitnami.com/bitnami"
}
