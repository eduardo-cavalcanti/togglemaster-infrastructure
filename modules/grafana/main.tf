resource "helm_release" "grafana" {
  name             = "grafana"
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "grafana"
  version          = var.chart_version
  namespace        = var.namespace
  create_namespace = true
  atomic           = true
  wait             = true
  timeout          = 600

  values = [yamlencode({
    service = {
      type = "ClusterIP"
    }
    ingress = {
      enabled = false
    }
    persistence = {
      enabled = false
    }
    resources = {
      requests = {
        cpu    = "100m"
        memory = "256Mi"
      }
      limits = {
        cpu    = "500m"
        memory = "512Mi"
      }
    }
  })]
}
