# 🗕️ Day 4 – Launching and Accessing Virtual Machines (EC2) on AWS

🗓️ Date: May 21, 2025 (Tuesday)

---

## 🌐 What is EC2 in AWS?

**Amazon EC2 (Elastic Compute Cloud)** is a core service that allows users to create and manage **virtual machines** (called *instances*) in the AWS cloud.

📌 **Example:**
If you want to host a website or run a script 24/7 without using your local machine, you can launch an EC2 instance and do it from the cloud.

---

## ❓ Why Create Virtual Machines on AWS?

* To **deploy web applications** or APIs.
* To **test software** without buying hardware.
* For **remote development** or DevOps automation.
* To simulate real-world production environments.

EC2 offers **flexibility, scalability**, and **pay-as-you-go pricing**, making it ideal for various use cases.

---

## 🧰 Procedure to Create an EC2 Instance on AWS

1. **Log into AWS Console** using your root or IAM user credentials.
2. **Search for EC2** and open the EC2 Dashboard.
3. Click on **“Launch Instance”**.
4. **Choose an AMI (Amazon Machine Image)** – e.g., Ubuntu Server 22.04 LTS.
5. **Select Instance Type** – e.g., t2.micro (free tier eligible).
6. **Configure Instance Details** – defaults are fine for now.
7. **Add Storage** – usually 8–30 GB is sufficient.
8. **Add Tags** – optional metadata for easy identification.
9. **Configure Security Group** – allow SSH (port 22) and optionally HTTP/HTTPS.
10. **Create or Select a Key Pair** – used for secure login.
11. Click **“Launch”** to create the instance.

✅ Your virtual machine will be running in a few minutes.

---

## 🔐 How to Login to EC2

### 1. **Using Browser-based SSH (EC2 Connect)**

* From the EC2 Dashboard, select your instance.
* Click **Connect > EC2 Instance Connect (browser-based SSH)**.
* Click **“Connect”** – you’ll get terminal access in-browser.

### 2. **Using Terminal/CLI with Key Pair**

```bash
chmod 400 my-key.pem
ssh -i my-key.pem ubuntu@<Public-IP>
```

📌 Make sure your **Security Group** allows SSH access (port 22).

### 3. **Using AWS CLI**

```bash
aws ec2-instance-connect send-ssh-public-key \
  --instance-id i-xxxxxxxxxx \
  --availability-zone us-east-1a \
  --instance-os-user ubuntu \
  --ssh-public-key file://my-key.pub
```

AWS CLI requires additional setup but is powerful for automation.

---

## 📌 Summary

| Task                    | Description                                         |
| ----------------------- | --------------------------------------------------- |
| EC2 Instance Creation   | Create cloud-based virtual machines                 |
| Why Use EC2             | Cost-effective, scalable, and accessible VM hosting |
| Browser-based SSH Login | Quick access via AWS Console                        |
| SSH Login with Key Pair | Secure access using `.pem` private key in terminal  |
| AWS CLI Access          | Automated access using CLI tools and public keys    |

---

🔚 *End of Day 4 – You now understand how to launch and connect to virtual machines in the AWS cloud using multiple secure methods.*
