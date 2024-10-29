output "network_name" {
  description = "VPC network name"
  value       = google_compute_network.vpc_network.name
}