# FullStackDevAppVerito

This project provisions Azure infrastructure using **Terraform** to deploy a containerized full-stack application (frontend + backend) on **Azure Kubernetes Service (AKS)**.

##  Technologies Used

- **Terraform** – for infrastructure as code (IaC)
- **Azure** – cloud provider
- **Azure Kubernetes Service (AKS)** – for container orchestration
- **Docker** – for containerizing applications
- **GitHub Actions** – for CI/CD automation

##  Repository Structure

- `main.tf` – defines the core infrastructure
- `variables.tf` – contains input variables
- `terraform.tfvars` – defines values for the variables
- `providers.tf` – specifies the Azure provider
- `backend.tf` – configures remote state backend (if used)
- `.github/workflows/workflow.yml` – GitHub Actions workflow for Terraform

##  Setup Instructions

### 1. **Initialize Terraform**
terraform init

terraform plan

terraform apply
