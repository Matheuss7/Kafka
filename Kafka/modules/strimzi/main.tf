#Namespace para deploy do cluster operator
resource "kubernetes_namespace" "namespace_strimzi" {
  metadata {
    name = "strimzi"
  }
}
