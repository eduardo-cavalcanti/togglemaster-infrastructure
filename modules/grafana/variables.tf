variable "namespace" {
  description = "Namespace Kubernetes do Grafana."
  type        = string
  default     = "observability"
}

variable "chart_version" {
  description = "Versao do Helm chart oficial do Grafana."
  type        = string
  default     = "9.3.2"
}
