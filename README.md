# ECK-Stack Chart examples with Terraform

## Overview
***This repo is still under development, until tests are run these serve more as examples than ready to run examples***

This repo contains examples of Elasticsearch clusters built on top of the ECK-Stack chart, the ECK Operator and the Terraform provider for Elasticsearch.

Although it's possible to configure almost everything using config blocks, StackConfigPolicy and secrets, my experience has been that it's best to seperate slow changing code(your running clusters) from configuration code(think spaces, templates, users and roles etc).

Here are a few reasons to use the Terraform provider:

- Seperate your configuration code from your deployment code. These don't belong together
- Collaborate on your configuration repo without exposing your deployments to risk.
- Leverage Terraform to validate your code, and FAIL if it sees an issue when applying. No bad code makes it into production.
- Better CICD. Terraform Validate and Plan are great ways to ensure that your configuration code is valid and to keep main clean.

---

### Resources

- [Terraform Documentation](https://www.terraform.io/docs)
- [Elasticsearch Documentation](https://www.elastic.co/guide/en/elasticsearch/reference/index.html)
