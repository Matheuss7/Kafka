provider "google" {
  credentials = file("~/Documents/Matheus/teste/GKE/umbrella-mi-754d113fc5e6.json")
  project     = "umbrella-mi"
  region      = "us-central1"
}

resource "google_container_cluster" "my_cluster" {
  name     = "umbrella-cluster"
  location = "us-central1"

  node_pool {
    name       = "default-pool"
    node_count = 1
    // Customize the machine type and other options if needed
    // machine_type = "n1-standard-2"
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config" # Substitua pelo caminho para o seu arquivo kubeconfig
}

resource "kubernetes_namespace" "kafka" {
  metadata {
    name = "strimzi" # Nome do namespace que você quer criar
  }
}
