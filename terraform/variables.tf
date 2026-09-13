variable "region" {
    description = "GCP region"
    type        = string
    default     = "us-central1"
}

variable "project" {
    description = "gcp project id"
    type        = string
    default     = "project-12dfcdc9-6860-459d-99f"
}

variable "environment" {
    description = "gcp environment"
    type        = string
    default     = "production"
}
variable "vpc-cidr" {
    description = "gcp vpc cidr creation"
    type        = string
    default     = "10.0.0.0/16"
}

variable "cluster_name" {
    description = "gke cluster name"
    type        = string
    default     = "jerney-gke"
}
