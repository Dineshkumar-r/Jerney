resource "google_compute_network" "vpc" {
  name = "jerney-vpc"

  auto_create_subnetworks  = false
  enable_ula_internal_ipv6 = true
}

resource "google_compute_subnetwork" "sub1" {
  name = "jerney-vpc"

  ip_cidr_range = var.vpc-cidr
  region        = var.region

resource "google_container_cluster" "cluster" {
  name = var.cluster_name

  location                 = var.region
  enable_autopilot         = true
  enable_l4_ilb_subsetting = true

  network    = google_compute_network.vpc.id
  subnetwork = google_compute_subnetwork.sub1.id
  }