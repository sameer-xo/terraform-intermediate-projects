# 🚀 Terraform AWS EC2 Instance with Security Group

This Terraform configuration launches an **EC2 instance** in AWS with an attached **security group** that allows inbound SSH access.

## 🧱 What It Does

- Creates a **Security Group** that:
  - Allows inbound SSH (port 22) from **any IP** (`0.0.0.0/0`)
  - Allows all outbound traffic
- Launches an **EC2 Instance** with:
  - Type: `t2.micro` (free-tier eligible)
  - AMI: `ami-052064a798f08f0d3` (Amazon Linux 2 in `us-east-1`)
  - The above security group attached

## 📁 File Structure
.
├── main.tf # Main Terraform configuration
├── variables.tf # (Optional) Variable definitions
├── outputs.tf # (Optional) Outputs like public IP
└── README.md # This file

## 🌍 AWS Region

The EC2 instance and security group are created in:us-east-1 (N. Virginia)

---

## 🔐 Security Group Rules

| Type   | Protocol | Port | Source       |
|--------|----------|------|--------------|
| Inbound | TCP      | 22   | 0.0.0.0/0 (Anywhere) |
| Outbound | ALL    | ALL  | 0.0.0.0/0 |

⚠️ **Warning:** Allowing SSH from all IPs is insecure for production. Consider restricting it to your IP.

## 🛠️ How to Use

### 1️⃣ Prerequisites

- [Terraform installed](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- [AWS CLI installed & configured](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- An AWS IAM user with EC2 and VPC permissions

### 2️⃣ Initialize Terraform



# 🚀 Terraform AWS S3 Bucket Module

This Terraform module creates an AWS S3 bucket using a customizable name through an input variable.

## 📦 Resources Created

- **AWS S3 Bucket**

## 📥 Input Variables

### `bucket_name`
- **Description**: Name of the S3 bucket to be created.
- **Type**: `string`
- **Required**: ✅ Yes

Example:
```hcl
bucket_name = "my-unique-bucket-name-123"

# 📦 Terraform AWS S3 Bucket with Versioning

This Terraform configuration creates an **Amazon S3 bucket** with **versioning enabled** in the `us-east-1` region.

## 🧱 What It Does

- Provisions an **S3 bucket** named:  
  `my-unique-versioned-bucket-10-10-2025`
- Enables **versioning** to retain multiple versions of an object.
- Uses the **AWS provider** in the `us-east-1` region.

## 📁 File Structure
.
├── main.tf # Main Terraform configuration file
├── README.md # This documentation

---

## 🔁 Versioning in S3

Versioning allows you to preserve, retrieve, and restore every version of every object stored in your bucket. This is useful for:

- Protecting against accidental overwrites and deletions
- Auditing historical versions
- Meeting compliance requirements

---

## 🛠️ How to Use

### 1️⃣ Prerequisites

- [Terraform installed](https://developer.hashicorp.com/terraform/install)
- [AWS CLI installed and configured](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
- AWS credentials set via:
  - `aws configure`, or
  - Environment variables:
    ```bash
    export AWS_ACCESS_KEY_ID=your_access_key
    export AWS_SECRET_ACCESS_KEY=your_secret_key
    ```

### 2️⃣ Initialize Terraform

```bash
terraform init



# ☁️ Terraform AWS RDS MySQL Instance

This Terraform configuration creates a **MySQL RDS database instance** in AWS using the `db.t3.micro` instance class.

## 🧱 What It Does

- Provisions an **RDS MySQL database** with:
  - 20 GB of storage
  - MySQL version 8.0 (via default parameter group)
  - Instance class: `db.t3.micro` (Free-tier eligible)
- Skips final snapshot on deletion (for faster teardown during development)

## ⚙️ Configuration Details

| Setting                | Value                        |
|------------------------|------------------------------|
| Engine                 | MySQL                        |
| Engine Version         | 8.0 (via `default.mysql8.0`) |
| Instance Class         | `db.t3.micro`                |
| Alloca

## 📁 File Structure

.
├── main.tf # Terraform configuration file
├── README.md # This documentation

## 🛠️ How to Use

### 1️⃣ Prerequisites

- [Terraform installed](https://developer.hashicorp.com/terraform/install)
- [AWS CLI configured](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
- AWS credentials available via `aws configure` or environment variables.

### 2️⃣ Initialize Terraform

```bash
terraform init





