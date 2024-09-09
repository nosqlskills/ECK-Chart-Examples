#Okta authenticated admin user. See okta example
resource "elasticstack_elasticsearch_security_role_mapping" "Elasticsearch_Admin_User" {
  name    = "Elasticsearch_Admin_User"
  enabled = true
  roles   = ["Elasticsearch_Admin_User"]

  rules = jsonencode({
    any = [
      { field = { "realm.name" = "saml1" } },
      { field = { "groups" = "Elasticsearch Admin User" } },
    ]
  })
}