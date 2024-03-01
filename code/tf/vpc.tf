# VPC
module "network_example_basic_custom_mode" {
  source      = "terraform-google-modules/network/google//examples/basic_custom_mode"
  version     = "9.0.0"
  project_id  = ""
}

# K8S Subnet (256 IPs)
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-k8s-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.1.0.0/24"
}
