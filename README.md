# CI/CD Pipeline for Kubernetes in GCP with Terraform

## Description
This project automates deployment of applications to Google Kubernetes Engine (GKE) using Terraform for infrastructure and GitHub Actions for CI/CD.

## Key Features
- **Automated Infrastructure Provisioning**: Uses Terraform modules for managing network (VPC) and GKE clusters.
- **CI/CD Workflow**: GitHub Actions handles continuous integration and deployment, automatically deploying changes to GCP.
- **Multi-Environment Support**: Configures both `dev` and `prod` environments for consistent testing and deployment.
- **Monitoring and Alerting**: Sets up basic monitoring to ensure application and cluster health.

## Requirements
- **Google Cloud SDK**: To interact with GCP.
- **Terraform**: For Infrastructure as Code (IaC).
- **GitHub Account**: For managing the CI/CD pipeline.

## Setup Instructions

### 1. Clone the Repository
Clone this repository to your local machine:
```bash
git clone https://github.com/yourusername/gcp-cicd-kubernetes-terraform.git
cd gcp-cicd-kubernetes-terraform

### 2. Configure Google Cloud CLI
Log in to your Google Cloud account and set the default project:
 
```bash
gcloud auth login
gcloud config set project <YOUR_PROJECT_ID>
```

### 3. Initialize Terraform
In the root directory of the project, run:

```bash
terraform init
```

### 4. Plan and Apply Infrastructure
To see what Terraform will create:

```bash
terraform plan -var-file="environments/dev/terraform.tfvars"
```

# To apply the configuration:

```bash
terraform apply -var-file="environments/dev/terraform.tfvars"
```

### 5. CI/CD Pipeline with GitHub Actions
The GitHub Actions pipeline is automatically triggered on pushes to the `dev` and `main` branches:

- **Dev Branch**: Deploys to the development environment.
- **Main Branch**: Deploys to the production environment.

Ensure your GitHub repository has the following secrets configured:

- `GCP_CREDENTIALS`: Your JSON key for GCP authentication.
- `PROJECT_ID`: The ID of your GCP project.

### 6. Monitoring and Alerts
Basic CPU usage alerts are configured for the GKE cluster. Additional monitoring settings can be added in the `modules/gke/main.tf` file.

### Future Improvements
- Extend monitoring to include memory usage and error logs.
- Integrate additional GCP services such as Cloud Storage and BigQuery.
- Implement automated rollback for failed deployments.