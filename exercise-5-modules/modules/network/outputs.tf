output "vpc_id" {
    description = "The ID of the created VPC."
    value       = google_compute_network.main.id
}
output "subnet_id" {
  description = "The ID of the created subnet."
  value       = google_compute_subnetwork.main.id
}