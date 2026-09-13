output "cluster_name" {
  description = "GKE cluster name"
  value       = google_container_cluster.cluster.name
}

output "cluster_endpoint" {
  description = "GKE cluster endpoint"
  value       = google_container_cluster.cluster.endpoint
}

output "vpc_id" {
  description = "GKE cluster VPC ID"
  value       = google_compute_network.vpc.id
}