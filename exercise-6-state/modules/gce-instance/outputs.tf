output "vm_external_ip" {
  description = "The external IP address of the instance."
  value       = google_compute_instance.main.network_interface[0].access_config[0].nat_ip
}