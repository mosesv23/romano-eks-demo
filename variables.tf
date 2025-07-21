variable "aws_region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "The name of the project, used for tagging resources."
  type        = string
  default     = "eks-dev"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "The CIDR blocks for the public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "The CIDR blocks for the private subnets."
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
  default     = "dev-cluster"
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.29"
}

variable "node_group_instance_type" {
  description = "The instance type for the EKS node group."
  type        = string
  default     = "t3.micro"
}

variable "node_group_desired_size" {
  description = "The desired number of nodes in the node group."
  type        = number
  default     = 2
}

variable "node_group_min_size" {
  description = "The minimum number of nodes in the node group."
  type        = number
  default     = 1
}

variable "node_group_max_size" {
  description = "The maximum number of nodes in the node group."
  type        = number
  default     = 3
} 