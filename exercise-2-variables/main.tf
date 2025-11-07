resource "google_compute_network" "main" {
  name                    = "my-first-vpc"
  auto_create_subnetworks = false
}