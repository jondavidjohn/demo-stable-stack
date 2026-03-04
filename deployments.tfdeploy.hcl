deployment_auto_approve "yolo" {
  check {
    condition = context.plan.changes.total < 3000
    reason    = "approve up to 3000 changes"
  }
}

deployment_group "dev" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment_group "staging" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment_group "qa" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment_group "uat" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment "dev" {
  deployment_group = deployment_group.dev
}

deployment "staging" {
  deployment_group = deployment_group.staging
}

deployment "qa" {
  deployment_group = deployment_group.qa
}

deployment "uat" {
  deployment_group = deployment_group.uat
}

deployment_group "preprod" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment_group "prod" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment "preprod" {
  deployment_group = deployment_group.preprod
}

deployment "prod" {
  deployment_group = deployment_group.prod
}
