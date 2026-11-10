output "namespace" {
  value = helm_release.grafana.namespace
}

output "service_name" {
  value = "grafana"
}

output "internal_url" {
  description = "URL do Service Grafana, acessivel dentro do cluster."
  value       = "http://grafana.${helm_release.grafana.namespace}.svc.cluster.local:80"
}
