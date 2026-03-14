📌 Introduction

Infrastructure management is a critical part of modern cloud-native systems. Traditionally, infrastructure resources such as virtual machines, networking components, and storage were created manually through cloud consoles. This manual process is time-consuming, error-prone, and difficult to reproduce.

To solve these challenges, the concept of Infrastructure as Code (IaC) was introduced.

One of the most powerful tools for implementing IaC is Terraform, an open-source infrastructure provisioning tool developed by HashiCorp.

Terraform allows developers and DevOps engineers to define infrastructure using declarative configuration files and automatically provision resources across cloud providers.

This project demonstrates how to use Terraform to:

Provision an Amazon EC2 instance on Amazon Web Services

Manage infrastructure using Terraform configuration files

Apply and destroy infrastructure in a repeatable and controlled way

By using Terraform, infrastructure becomes:

Version controlled

Automated

Reusable

Consistent across environments

🏗️ Project Overview

This project provisions a simple AWS infrastructure component:

✔ Create an EC2 instance
✔ Configure the AWS provider
✔ Manage infrastructure lifecycle using Terraform
✔ Destroy infrastructure when no longer needed

Terraform interacts with AWS APIs to automatically create and remove resources.

⚙️ Prerequisites

Before running this project, ensure the following tools are installed:

1️⃣ Install Terraform

Download Terraform from the official website:

https://developer.hashicorp.com/terraform

Verify installation:

terraform -version
2️⃣ Install AWS CLI

Terraform requires AWS credentials configured in your system.

Install AWS CLI:

sudo apt install awscli

Verify installation:

aws --version
3️⃣ Configure AWS Credentials

Configure AWS credentials using:

aws configure

Provide the following values:

AWS Access Key ID
AWS Secret Access Key
Default region name
Default output format

Terraform will use these credentials to access AWS services.

📂 Project Structure
terraform-ec2-project
│
├── main.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── README.md
File Explanation
File	Purpose
provider.tf	Defines AWS provider configuration
main.tf	Defines EC2 infrastructure resource
variables.tf	Declares input variables
terraform.tfvars	Assigns values to variables
outputs.tf	Displays useful outputs like instance ID
README.md	Project documentation
🧠 Terraform Architecture

Terraform works using the following workflow:

Write Configuration → Initialize → Plan → Apply → Manage → Destroy
Key Terraform Components
Component	Description
Provider	Cloud platform API interface
Resource	Infrastructure object (EC2, VPC, S3)
Variables	Dynamic inputs
State File	Tracks infrastructure status
🔧 Terraform Configuration Example
Provider Configuration
provider "aws" {
  region = "ap-south-1"
}

This tells Terraform to interact with AWS services in the Mumbai region.

EC2 Instance Resource
resource "aws_instance" "my_ec2" {

  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }

}
Explanation
Attribute	Description
ami	Amazon Machine Image used to create instance
instance_type	Instance hardware type
tags	Labels used for resource identification
🚀 Terraform Workflow
Step 1 — Initialize Terraform
terraform init

Purpose:

Downloads AWS provider plugins

Initializes working directory

Step 2 — Validate Configuration
terraform validate

Checks syntax errors in Terraform files.

Step 3 — Terraform Plan
terraform plan

Terraform shows what infrastructure will be created.

Example output:

Plan: 1 to add, 0 to change, 0 to destroy
Step 4 — Apply Infrastructure
terraform apply

Terraform will:

Create EC2 instance

Allocate resources in AWS

Update state file

Confirm with:

yes

After execution, the EC2 instance will be visible in the Amazon EC2 console.

🗑️ Destroy Infrastructure

To remove the created infrastructure:

terraform destroy

Terraform will:

Identify created resources

Safely delete them from AWS

Update state file

Example output:

Destroy complete!

This ensures no unnecessary cloud costs.

📊 Terraform State File

Terraform maintains a state file:

terraform.tfstate

Purpose:

Tracks infrastructure resources

Maps configuration to real infrastructure

Enables updates and deletions

⚠️ In production environments, state files should be stored remotely (e.g., Amazon S3 with Amazon DynamoDB locking).

🔐 Best Practices

✔ Use version control (Git)
✔ Store Terraform state remotely
✔ Use variables instead of hardcoding values
✔ Use modules for reusable infrastructure
✔ Implement CI/CD pipelines

📈 Advantages of Terraform
Feature	Benefit
Infrastructure as Code	Repeatable deployments
Multi-cloud support	Works with AWS, Azure, GCP
Declarative syntax	Easy to understand
Automation	Faster provisioning
Version control	Infrastructure history tracking
📚 Learning Outcomes

Through this project you will learn:

Infrastructure as Code fundamentals

Terraform workflow

AWS EC2 provisioning

Infrastructure lifecycle management

DevOps automation principles

🎯 Future Improvements

Possible enhancements:

Add VPC configuration

Create Security Groups

Deploy multiple EC2 instances

Add load balancer

Integrate with CI/CD pipelines

👨‍💻 Author

DevOps Learner focused on:

Cloud Computing

AWS Infrastructure

Terraform Automation

DevOps Engineering
