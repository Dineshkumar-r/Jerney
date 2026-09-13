output "cluster_name" {
    description = "GKE cluster name"
    value       = google_container_cluster.cluster.name
}

output "cluster_endpoint" {
    description = "GKE cluster endpoint"
    value       = google_container_cluster.cluster.cluster.endpoint
}

output "vpc_id" {
    description = "GKE cluster vpc"
    value       = "google_compute_network.vpc.vpc_id

