output "vm_external_ip" {
  description = "The external IP address of the compute instance."
  value       = module.my_gce_instance.vm_external_ip
}