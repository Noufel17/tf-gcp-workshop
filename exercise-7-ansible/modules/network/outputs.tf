output "vpc_id" {
    description = "The ID of the created VPC."
    value       = google_compute_network.main.id
}
output "subnet_id" {
  description = "The ID of the created subnet."
  value       = google_compute_subnetwork.main.id
}

output "ssh_rule_id" {
  description = "The ID of the created SSH firewall rule."
  value       = google_compute_firewall.allow_ssh.id
}