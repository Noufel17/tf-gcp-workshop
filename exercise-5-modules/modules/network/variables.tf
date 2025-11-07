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

variable "zone" {
  description = "The zone to create the instance in."
  type        = string
}

variable "region" {
  description = "The region to create the instance in."
  type        = string
}