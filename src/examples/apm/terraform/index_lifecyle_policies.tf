module "custom_apm_ilp_templates" {
  source          = "git::https://github.com/nosqlskills/terraform-provider-for-elasticsearch-reusable-modules/tree/main/src/modules/ilm_policies"
  apm_enabled     = true
  custom-traces-apm-policy_min_age_delete             = "7d"
  custom-traces-apm-rum-policy_min_age_delete         = "7d"
  custom-metrics-apm-internal-policy_min_age_delete   = "7d"
  custom-metrics-apm-app-policy_min_age_delete        = "7d"
  custom-logs-apm-error-policy_min_age_delete         = "7d"
  custom-logs-apm-app-policy_min_age_delete           = "7d"
}