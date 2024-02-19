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
