output "ingress_system_name" {
  description = "The name of the ingress system"
  value       = helm_release.ingress_system.name
}

output "ingress_system_namespace" {
  description = "The namespace of the ingress system"
  value       = helm_release.ingress_system.namespace
}

output "ingress_system_version" {
  description = "The version of the ingress system"
  value       = helm_release.ingress_system.version
}

output "ingress_system_chart" {
  description = "The chart of the ingress system"
  value       = helm_release.ingress_system.chart
}

output "repository" {
  description = "The repository of the ingress system"
  value       = helm_release.ingress_system.repository
}
