variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "project" {
  description = "GCP project ID"
  type        = string
  default     = "project-12dfcdc9-6860-459d-99f"
}

variable "environment" {
  description = "GCP environment"
  type        = string
  default     = "production"
}

variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
  default     = "jerney-gke"
}