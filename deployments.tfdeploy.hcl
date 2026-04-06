deployment_auto_approve "no_removals" {
  check {
    condition = context.plan.changes.remove == 0
    reason    = "Plans that remove resources require manual approval"
  }
}

deployment_group "development" {
  auto_approve_checks = [
    deployment_auto_approve.no_removals,
  ]
}

deployment_group "staging" {
  auto_approve_checks = [
    deployment_auto_approve.no_removals,
  ]
}

deployment_group "production" {
  auto_approve_checks = [
    deployment_auto_approve.no_removals,
  ]
}

deployment "dev" {
  deployment_group = deployment_group.development
}

deployment "prod" {
  deployment_group = deployment_group.production
}

deployment "staging" {
  deployment_group = deployment_group.staging
}
