variable "instance_name" {
  description = "Name of the compute instance."
  type        = string
}

variable "machine_type" {
  description = "Machine type for the instance."
  type        = string
  default     = "e2-micro"
}

variable "zone" {
  description = "The zone to create the instance in."
  type        = string
}

variable "vpc" {
  description = "The VPC to attach the instance to."
  type        = string
}

variable "subnet" {
  description = "The subnet to attach the instance to."
  type        = string
}

variable "tags" {
  description = "A list of network tags to apply to the instance."
  type        = list(string)
  default     = []
}
variable "os_image" {
  description = "The OS image to use for the instance."
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "ssh_public_key_path" {
  description = "The SSH public key to add to the instance metadata."
  type        = string
}

variable "ssh_private_key_path" {
  description = "The SSH private key to use for the instance."
  type        = string
}

variable "ssh_user" {
  description = "The username for the SSH key."
  type        = string
}
