# AWS EKS Terraform for Dev Environment

This Terraform project sets up a development-ready AWS EKS cluster. It's designed to be a cost-effective and best-practice foundation for your containerized applications.

## Features

- **VPC:** Creates a new VPC with public and private subnets across two availability zones.
- **EKS Cluster:** A robust EKS cluster with the necessary IAM roles.
- **Node Group:** A managed node group using `t3.micro` instances, suitable for development and testing.
- **IAM Roles:** Proper IAM roles for the EKS cluster and worker nodes.
- **Outputs:** Key information like the cluster endpoint and kubeconfig command are provided as outputs.

## Prerequisites

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) installed
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) installed and configured with your credentials
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/) installed

## How to Use

1.  **Clone the repository:**
    ```bash
    git clone <your-repo-url>
    cd <repo-name>
    ```

2.  **Initialize Terraform:**
    ```bash
    terraform init
    ```

3.  **Review the plan:**
    ```bash
    terraform plan
    ```

4.  **Apply the configuration:**
    ```bash
    terraform apply
    ```

5.  **Configure kubectl:**
    After the apply is complete, Terraform will output a command to configure `kubectl`. Run that command to connect to your new EKS cluster.

    ```bash
    aws eks update-kubeconfig --region $(terraform output -raw region) --name $(terraform output -raw cluster_name)
    ```

6.  **Destroy the infrastructure:**
    When you no longer need the resources, you can destroy them to avoid ongoing charges.

    ```bash
    terraform destroy
    ``` 