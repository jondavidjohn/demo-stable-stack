deployment_auto_approve "yolo" {
  check {
    condition = context.plan.changes.total < 3000
    reason    = "approve up to 3000 changes"
  }
}

deployment_group "preprod_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}
deployment "preprod" {}

deployment_group "prod_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}
deployment "prod" {}

deployment_group "dev_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}
deployment "dev" {}

deployment_group "staging_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}
deployment "staging" {}

deployment_group "qa_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}
deployment "qa" {}

deployment_group "uat_default" {
  auto_approve_checks = [deployment_auto_approve.yolo]
}
deployment "uat" {}
