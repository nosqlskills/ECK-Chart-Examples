provider "elasticstack" {
  elasticsearch {
    insecure  = true
    username  = var.TERRAFORM_USER
    password  = var.TERRAFORM_PASSWORD
    endpoints = var.CLUSTER_ENDPOINT
  }
}

