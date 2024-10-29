variable "cluster_name" {
  description = "Cluster name for GKE"
  type        = string
}

variable "node_count" {
  description = "Initial number of nodes"
  type        = number
  default     = 3
}

variable "machine_type" {
  description = "Machine type for nodes"
  type        = string
  default     = "e2-medium"
}