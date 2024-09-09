module "custom_apm_component_templates" {
  source          = "git::https://github.com/nosqlskills/terraform-provider-for-elasticsearch-reusable-modules/tree/main/src/modules/component_templates"
  apm_enabled     = true
  traces-apm-custom_shards            = "3"
  traces-apm-rum-custom_shards        = "3"
  metrics-apm-internal-custom_shards  = "3"
  metrics-apm-app-custom_shards       = "3"
  logs-apm-error-custom_shards        = "3"
  logs-apm-app-custom_shards          = "3"
}