module "network" {
  source       = "../../modules/network"
  network_name = "prod-network"
}

module "gke" {
  source       = "../../modules/gke"
  cluster_name = "prod-cluster"
  node_count   = 3
  machine_type = "e2-medium"
}