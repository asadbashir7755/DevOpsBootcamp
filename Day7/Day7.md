## ✅ **Day 7 – AWS Resource Usage Shell Script**

🗕️ **Date:** 18 June
👨‍💻 **Author:** Asad Bashir
🔧 **Tools Used:** AWS CLI, Shell Scripting
📂 **Script Name:** `aws-resource-usage.sh`

---

### 🔽 **What I Did**

On Day 7, I created a shell script to automate the reporting of AWS resource usage using AWS CLI. The script performs the following tasks:

* Lists all S3 buckets.
* Lists EC2 instance IDs in the `eu-north-1` region.
* Displays AWS Lambda functions in the same region.
* Retrieves all IAM users.
* Extracts and prints only IAM usernames in a table format.

The script uses `set -e` for safe error handling and ensures command outputs are cleanly separated and readable.

---

### 🧠 **What I Learned**

* How to use `aws` CLI commands to interact with different AWS services.
* The utility of `--query` and `--output` flags for custom filtering.
* The importance of structuring CLI scripts with error handling using `set -e`.
* Real-world DevOps scripting practices for monitoring AWS infrastructure.

---

### 📌 Notes

* The actual script is available in the GitHub repository.
* AWS CLI must be properly configured with valid credentials.
* Ensure appropriate IAM permissions are granted for EC2, S3, Lambda, and IAM services.
* The region used is `eu-north-1`, which can be changed as per environment.
