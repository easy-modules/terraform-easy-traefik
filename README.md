# Terraform easy modules

Terraform module to deploy Traefik

## Usage

```hcl
module "traefik" {
  source           = "easy-modules/traefik"
  chart_name       = "traefik"
  description      = "Traefik is a modern HTTP reverse proxy and load balancer for microservices."
  chart_version    = "23.1.0"
  repository       = "https://traefik.github.io/charts"
  namespace        = "traefik-system"
  wait             = true
  cleanup_on_fail  = true
  create_namespace = {
    values = {
      "autoscaling.enable"             = true
      "autoscaling.minReplicas"        = 1
      "autoscaling.maxReplicas"        = 3
      "ingressRoute.dashboard.enabled" = true
    }
  }
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
