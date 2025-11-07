output "vpc_name" {
  description = "The name of the created VPC network."
  value       = google_compute_network.main.name
}

output "subnet_name" {
  description = "The name of the created subnet."
  value       = google_compute_subnetwork.main.name
}

output "vm_external_ip" {
  description = "The external IP address of the compute instance."
  value       = google_compute_instance.main.network_interface[0].access_config[0].nat_ip
}