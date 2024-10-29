module "network" {
  source       = "../../modules/network"
  network_name = "dev-network"
}

module "gke" {
  source       = "../../modules/gke"
  cluster_name = "dev-cluster"
  node_count   = 2
  machine_type = "e2-medium"
}