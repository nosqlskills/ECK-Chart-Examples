module "resource_group" {
  source          = "git::https://github.com/nosqlskills/terraform-provider-for-elasticsearch-reusable-modules/tree/main/src/modules/cluster_settings"
  watermark_size   = "large_cluster"
}