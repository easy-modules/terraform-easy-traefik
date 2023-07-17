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
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.8.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.10.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.22.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.10.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.ingress_system](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_name"></a> [chart\_name](#input\_chart\_name) | Traefik chart name | `string` | `"traefik"` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Traefik chart version | `string` | `"23.1.0"` | no |
| <a name="input_cleanup_on_fail"></a> [cleanup\_on\_fail](#input\_cleanup\_on\_fail) | Cleanup on fail | `bool` | `true` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Create namespace | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Traefik chart description | `string` | `"Traefik is a modern HTTP reverse proxy and load balancer for microservices."` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Traefik namespace | `string` | `"traefik-system"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Traefik chart repository | `string` | `"https://traefik.github.io/charts"` | no |
| <a name="input_set_values"></a> [set\_values](#input\_set\_values) | Traefik values | `map(any)` | <pre>{<br>  "values": {<br>    "autoscaling.enable": true,<br>    "autoscaling.maxReplicas": 3,<br>    "autoscaling.minReplicas": 1,<br>    "ingressRoute.dashboard.enabled": true<br>  }<br>}</pre> | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Wait for traefik to be ready | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ingress_system_chart"></a> [ingress\_system\_chart](#output\_ingress\_system\_chart) | The chart of the ingress system |
| <a name="output_ingress_system_name"></a> [ingress\_system\_name](#output\_ingress\_system\_name) | The name of the ingress system |
| <a name="output_ingress_system_namespace"></a> [ingress\_system\_namespace](#output\_ingress\_system\_namespace) | The namespace of the ingress system |
| <a name="output_ingress_system_version"></a> [ingress\_system\_version](#output\_ingress\_system\_version) | The version of the ingress system |
| <a name="output_repository"></a> [repository](#output\_repository) | The repository of the ingress system |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
