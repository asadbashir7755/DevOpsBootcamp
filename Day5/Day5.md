# 🕕️ Day 5 – Interacting with AWS via CLI and Automating with Boto3

🗓️ Date: May 22, 2025 (Wednesday)

---

## 🚀 Objective

Today, I learned how to interact with AWS using the AWS Command Line Interface (CLI) and how to automate tasks like launching EC2 instances using **Python and Boto3**. This included setting up access credentials, testing the CLI, and writing automation scripts.

---

## 🚪 Step 1: Install AWS CLI on Ubuntu (Manual Method)

1. Download the AWS CLI bundle:

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```

2. Unzip the package:

```bash
unzip awscliv2.zip
```

3. Install the CLI:

```bash
sudo ./aws/install
```

4. Verify installation:

```bash
aws --version
```

---

## 🔐 Step 2: Create IAM User & Get Credentials

1. Log into the AWS Console.
2. Go to **IAM (Identity & Access Management)**.
3. Click on **Users > Add user**.
4. Enable **Programmatic access**.
5. Attach **AdministratorAccess** or necessary permissions.
6. Finish setup and **download the Access Key ID and Secret Access Key**.

---

## 🔍 Step 3: Configure AWS CLI Locally

Use the following command:

```bash
aws configure
```

You will be prompted to enter:

* **Access Key ID**
* **Secret Access Key**
* **Default Region** (e.g., `us-east-1`)
* **Output Format** (e.g., `json`)

Configuration is saved in:

```bash
~/.aws/credentials
~/.aws/config
```

---

## 📂 Step 4: Test by Launching an EC2 Instance via CLI

Command to launch EC2 instance:

```bash
aws ec2 run-instances \
  --image-id ami-0abcdef1234567890 \
  --count 1 \
  --instance-type t2.micro \
  --key-name MyKeyPair \
  --security-groups MySecurityGroup
```

Replace values like `ami-id`, `key-name`, and `security group` as per your setup.

Check running instances:

```bash
aws ec2 describe-instances
```

---

## 📖 Step 5: Automate Using Python and Boto3

### ✅ Prerequisites

Install Boto3:

```bash
pip install boto3
```

### 📚 Create Script (launch\_instance.py)

```python
import boto3

# Create EC2 resource
ec2 = boto3.resource('ec2')

# Launch instance
instance = ec2.create_instances(
    ImageId='ami-0abcdef1234567890',
    MinCount=1,
    MaxCount=1,
    InstanceType='t2.micro',
    KeyName='MyKeyPair'
)

print("Launched instance with ID:", instance[0].id)
```

> ⚠️ Ensure AWS credentials are properly configured before running the script.

### 🔗 Boto3 Documentation for EC2:

[https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/ec2.html](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/ec2.html)

> 🔎 I will continue reading the Boto3 documentation to explore more automation features.

---

## 📌 Summary

| Task                  | Description                                                                                           |
| --------------------- | ----------------------------------------------------------------------------------------------------- |
| Install AWS CLI       | Manual installation using zip and installer                                                           |
| Configure Credentials | Get Access/Secret keys via IAM and configure locally                                                  |
| Test with CLI         | Launch EC2 via `aws ec2 run-instances`                                                                |
| Automate with Boto3   | Use Python to script EC2 instance creation                                                            |
| Documentation         | [Boto3 EC2 Docs](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/ec2.html) |

---

🔚 *End of Day 5 – You now know how to set up and use AWS CLI and automate cloud infrastructure using Python scripts with Boto3.*
