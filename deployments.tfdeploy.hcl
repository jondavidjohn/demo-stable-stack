deployment_auto_approve "yolo" {
  check {
    condition = context.plan.changes.total < 3000
    reason    = "approve up to 3000 changes"
  }
}

deployment_group "preprod_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment_group "prod_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment_group "dev_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment_group "staging_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment_group "qa_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}

deployment_group "uat_default" {
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

deployment "preprod" {
  deployment_group = deployment_group.preprod
}

deployment "prod" {
  deployment_group = deployment_group.prod
}
