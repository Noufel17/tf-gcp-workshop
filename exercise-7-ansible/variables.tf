variable "project_id" {
  description = "The GCP project ID to deploy resources into."
  type        = string
}

variable "region" {
  description = "The GCP region to create resources in."
  type        = string
  default     = "us-central1"
}
variable "zone" {
  description = "The zone to create the instance in."
  type        = string
}
variable "vpc_name" {
  description = "Name of the VPC."
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
}

variable "instance_name" {
  description = "Name of the compute instance."
  type        = string
}

variable "machine_type" {
  description = "Machine type for the instance."
  type        = string
  default     = "e2-micro"
}

variable "network_tags" {
  description = "A list of network tags to apply to the instance."
  type        = list(string)
  default     = []
}
variable "os_image" {
  description = "The OS image to use for the instance."
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "ssh_user" {
  description = "The username for SSH access."
  type        = string
  default     = "workshop-user"
}
variable "ssh_public_key_path" {
  description = "The SSH public key to add to the instance metadata."
  type        = string
}
variable "ssh_private_key_path" {
  description = "The SSH private key to use for the instance."
  type        = string
}
