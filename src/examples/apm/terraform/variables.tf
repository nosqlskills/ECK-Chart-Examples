#Elasticsearch cluster endpoint
variable "CLUSTER_ENDPOINT" {
  description = "Cluster endpoint"
  type        = list(any)
  default     = ["https://YOUR_FQDN"]
}

#Elasticsearch user that terraform uses to login to the cluster
variable "TERRAFORM_USER" {
  description = "Elasticsearch user that terraform uses to login to the cluster"
  type        = string
  default     = "terraform_user"
}

#Elasticsearch terraform user password
variable "TERRAFORM_PASSWORD" {
  description = "Elasticsearch terraform user password"
  type        = string
  sensitive   = true
  default     = "CHANGE_ME"
}

#Kibana user that terraform uses to login to the kibana endpoint
variable "TERRAFORM_KIBANA_USER" {
  description = "Kibana user that terraform uses to login to the cluster"
  type        = string
  default     = "terraform_kibana_user"
}

#Kibana terraform user password
variable "TERRAFORM_KIBANA_PASSWORD" {
  description = "Kibana terraform user password"
  type        = string
  sensitive   = true
  default     = "CHANGE_ME"
}

#Elasticsearch Observability Platform prometheus reader password
variable "OBSERVABILITY_PLATFORM_PROMETHEUS_READER_PW" {
  description = "Observability Platform prometheus reader password"
  type        = string
  sensitive   = true
  default     = "CHANGE_ME"
}