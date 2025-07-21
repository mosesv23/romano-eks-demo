output "cluster_name" {
  description = "The name of the EKS cluster."
  value       = aws_eks_cluster.main.name
}

output "cluster_endpoint" {
  description = "The endpoint for your EKS cluster."
  value       = aws_eks_cluster.main.endpoint
}

output "kubeconfig_command" {
  description = "Command to configure kubectl for the EKS cluster."
  value       = "aws eks update-kubeconfig --region ${var.aws_region} --name ${aws_eks_cluster.main.name}"
}

output "region" {
  description = "The AWS region the resources are deployed in."
  value = var.aws_region
} 