data "kubernetes_service_account" "service_account_lookup" {
  for_each = var.service_account_lookup


  metadata {
    annotations = each.value.metadata.annotations
    labels      = each.value.metadata.labels
    name        = each.value.metadata.name
    namespace   = each.value.metadata.namespace
  }
}

