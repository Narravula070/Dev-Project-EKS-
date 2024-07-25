variable "aws_region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "ap-south-1"
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "Dev-VPC"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.10.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones."
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks."
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks."
  type        = list(string)
  default     = ["10.10.101.0/24", "10.10.102.0/24", "10.10.103.0/24"]
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway."
  type        = bool
  default     = true
}

variable "enable_vpn_gateway" {
  description = "Enable VPN Gateway."
  type        = bool
  default     = true
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  default     = "teja-cluster"
}

variable "cluster_version" {
  description = "The version of the EKS cluster."
  type        = string
  default     = "1.29"
}

variable "cluster_endpoint_public_access" {
  description = "Whether the EKS cluster endpoint is publicly accessible."
  type        = bool
  default     = true
}

variable "cluster_addons" {
  description = "Map of cluster add-ons and their configurations."
  type        = map(any)
  default = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }
}

variable "default_instance_types" {
  description = "Default instance types for EKS managed node groups."
  type        = list(string)
  default     = ["t3.medium"]
}

variable "node_group_min_size" {
  description = "Minimum size of the node group."
  type        = number
  default     = 1
}

variable "node_group_max_size" {
  description = "Maximum size of the node group."
  type        = number
  default     = 2
}

variable "node_group_desired_size" {
  description = "Desired size of the node group."
  type        = number
  default     = 1
}

variable "node_group_instance_types" {
  description = "Instance types for the node group."
  type        = list(string)
  default     = ["t3.medium"]
}

variable "enable_cluster_creator_admin_permissions" {
  description = "Enable admin permissions for the cluster creator."
  type        = bool
  default     = true
}

variable "environment" {
  description = "The environment name (e.g., dev, prod)."
  type        = string
  default     = "dev"
}
