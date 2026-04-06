deployment "dev" {}

deployment "prod" {}

deployment "staging" {}

deployment_group "development" {
  deployments = [deployment.dev]
  auto_approve_checks = [
    deployment_auto_approve.no_removals,
  ]
}

deployment_group "staging" {
  deployments = [deployment.staging]
  auto_approve_checks = [
    deployment_auto_approve.no_removals,
  ]
}

deployment_group "production" {
  deployments = [deployment.prod]
  auto_approve_checks = [
    deployment_auto_approve.no_removals,
  ]
}

deployment_auto_approve "no_removals" {
  check {
    condition = context.plan.changes.remove == 0
    reason    = "Plans that remove resources require manual approval"
  }
}
