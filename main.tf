resource "helm_release" "ingress_system" {
  name             = var.chart_name
  description      = var.description
  repository       = var.repository
  version          = var.chart_version
  chart            = var.chart_name
  namespace        = var.namespace
  create_namespace = var.create_namespace
  wait             = var.wait
  cleanup_on_fail  = var.cleanup_on_fail

  dynamic "set" {
    for_each = try({ for key, value in var.set_values.values : key => value }, {})
    content {
      name  = set.key
      value = set.value
    }
  }
}
