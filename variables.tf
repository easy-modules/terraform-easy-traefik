variable "chart_name" {
  type        = string
  description = "Traefik chart name"
  default     = "traefik"
}

variable "description" {
  type        = string
  description = "Traefik chart description"
  default     = "Traefik is a modern HTTP reverse proxy and load balancer for microservices."
}

variable "chart_version" {
  type        = string
  description = "Traefik chart version"
  default     = "23.1.0"
}

variable "repository" {
  type        = string
  description = "Traefik chart repository"
  default     = "https://traefik.github.io/charts"
}

variable "namespace" {
  type        = string
  description = "Traefik namespace"
  default     = "traefik-system"
}

variable "wait" {
  type        = bool
  description = "Wait for traefik to be ready"
  default     = true
}

variable "cleanup_on_fail" {
  type        = bool
  description = "Cleanup on fail"
  default     = true
}

variable "create_namespace" {
  type        = bool
  description = "Create namespace"
  default     = true
}

variable "set_values" {
  type        = map(any)
  description = "Traefik values"
  default = {
    values = {
      "autoscaling.enable"             = true
      "autoscaling.minReplicas"        = 1
      "autoscaling.maxReplicas"        = 3
      "ingressRoute.dashboard.enabled" = true
    }
  }
}
