teraform {
    required_version    = ">=1.5.0"
}
provider "google" {
    project = var.project
    region  = var.region
}

lables  = {
    Environment = var.environment
    ManagedBy   = terraform
}