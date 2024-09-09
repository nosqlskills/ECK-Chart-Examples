resource "elasticstack_elasticsearch_security_api_key" "master" {
  # Set the name
  name = "master"

  # Set the role descriptors
  role_descriptors = jsonencode({
    otel-agent-all = {
      cluster = ["all"],
      indices = [
        {
          names                    = ["*"],
          privileges               = ["all"]
          allow_restricted_indices = false
        }
      ]
    }
  })

  # Set the custom metadata for this user
  metadata = jsonencode({
    "env" = "dev"
  })
}