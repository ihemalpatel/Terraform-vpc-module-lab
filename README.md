# 🚀 Terraform AWS VPC + EC2 Deployment

This project provisions a complete AWS infrastructure using Terraform.  
It creates a custom VPC, public subnet, internet gateway, security group, and an EC2 instance.

---

## 📌 Architecture Overview

The infrastructure includes:

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group (HTTP + SSH access)
- EC2 Instance
- Key Pair integration

---

## 🛠 Technologies Used

- Terraform (>= 1.8.0)
- AWS Provider
- AWS EC2
- AWS VPC

---

## 📂 Project Structure
vpc_lab_root/
│
├── README.md
├── main.tf
├── output.tf
├── providers.tf
├── terraform.tfstate
├── terraform.tfstate.backup
├── terraform.tfvars
├── variables.tf
└── vpc_module
    └── vpc-ec2
        ├── main.tf
        ├── outputs.tf
        └── variables.tf
---

## ⚙️ Prerequisites

- AWS Account
- AWS CLI configured (`aws configure`)
- Terraform installed
- Existing AWS Key Pair

---

## 🚀 How to Deploy

### 1️⃣ Initialize Terraform

```bash
terraform init

terraform validate

terraform plan -var="key_pair_name=your_key_pair"

terraform apply -var="key_pair_name=your_key_pair"
