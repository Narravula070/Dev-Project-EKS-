output "vpc_id" {
  description = "The ID of the VPC."
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "List of public subnet IDs."
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "List of private subnet IDs."
  value       = module.vpc.private_subnets
}

output "eks_cluster_id" {
  description = "The ID of the EKS cluster."
  value       = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS cluster."
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_version" {
  description = "The version of the EKS cluster."
  value       = module.eks.cluster_version
}

output "eks_node_group_arns" {
  description = "List of ARNs of the EKS node groups."
  value       = module.eks.node_group_arns
}

output "eks_node_group_names" {
  description = "List of names of the EKS node groups."
  value       = module.eks.node_group_names
}
