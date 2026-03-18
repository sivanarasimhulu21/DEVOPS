# Install Terraform

Download Terraform from the official website:  
https://developer.hashicorp.com/terraform  

Verify installation:


terraform -version


---

# Install AWS CLI

Terraform requires AWS credentials configured in your system.

Install AWS CLI:


sudo apt install awscli


Verify installation:


aws --version


---

# Configure AWS Credentials

Configure AWS credentials using:


aws configure


Provide the following values:

- AWS Access Key ID  
- AWS Secret Access Key  
- Default region name  
- Default output format  

Terraform will use these credentials to access AWS services.

---

# Project Structure


terraform-ec2-project
│
├── main.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── README.md


---

# Terraform Architecture

Terraform works using the following workflow:


Write Configuration → Initialize → Plan → Apply → Manage → Destroy


---

# Terraform Configuration Example

## Provider Configuration


provider "aws" {
region = "ap-south-1"
}


This tells Terraform to interact with AWS services in the Mumbai region.

---

## EC2 Instance Resource


resource "aws_instance" "my_ec2" {

ami = "ami-0f5ee92e2d63afc18"
instance_type = "t2.micro"

tags = {
Name = "Terraform-EC2"
}

}


---

# Terraform Workflow

## Step 1 — Initialize Terraform


terraform init


## Step 2 — Validate Configuration


terraform validate


Checks syntax errors in Terraform files.

## Step 3 — Terraform Plan


terraform plan


## Step 4 — Apply Infrastructure


terraform apply


Terraform will:

- Create EC2 instance  
- Allocate resources in AWS  
- Update state file  

Confirm with:


yes


After execution, the EC2 instance will be visible in the Amazon EC2 console.

---

# Destroy Infrastructure

To remove the created infrastructure:


terraform destroy
