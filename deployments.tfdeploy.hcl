deployment "dev" {}

deployment "prod" {}

deployment "staging" {}

publish_output "prod_output" {
  value = deployment.prod.not_an_output
}
