#  Terraform EC2 Project (AWS)

##  Install Terraform

Download from: https://developer.hashicorp.com/terraform

Verify installation:

```
terraform -version
```

---

##  Install AWS CLI

```
sudo apt update
sudo apt install awscli -y
```

Verify:

```
aws --version
```

---

##  Configure AWS Credentials

```
aws configure
```

Provide:

* AWS Access Key ID
* AWS Secret Access Key
* Default region: ap-south-1
* Output format: json

---

##  Project Structure

```
terraform-ec2-project/
├── main.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
└── README.md
```

---

##  Terraform Configuration

### Provider (provider.tf)

```
provider "aws" {
  region = "ap-south-1"
}
```

---

### EC2 Instance (main.tf)

```
resource "aws_instance" "my_ec2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
```

---

## Terraform Workflow

```
cd terraform-ec2-project
terraform init
terraform validate
terraform plan
terraform apply
```

Type:

```
yes
```

---

##  Destroy Infrastructure

```
terraform destroy
```

Confirm:

```
yes
```

---

##  Workflow Summary

```
Write → Init → Validate → Plan → Apply → Destroy
```
