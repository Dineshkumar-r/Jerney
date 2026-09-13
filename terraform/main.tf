resource "google_compute_network" "vpc" {
  name = "jerney-vpc"

  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sub1" {
  name = "jerney-subnet"

  ip_cidr_range = var.vpc_cidr
  region        = var.region

  network = google_compute_network.vpc.id
}

resource "google_container_cluster" "cluster" {
  name = var.cluster_name

  location = var.region

  enable_autopilot = true

  network    = google_compute_network.vpc.id
  subnetwork = google_compute_subnetwork.sub1.id

  deletion_protection = false
}