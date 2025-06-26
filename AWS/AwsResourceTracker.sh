#!/bin/bash
# Author: Asad Bashir
# Date: 18 June
# Version: v1
# This script will report AWS resource usage
##########
# Services Included:
# - AWS S3
# - AWS EC2
# - AWS Lambda
# - AWS IAM users
set -e

echo "====== Listing AWS S3 Buckets ======"
aws s3 ls

echo "====== Listing EC2 Instances ======"
aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId' --region eu-north-1

echo "====== Listing AWS Lambda Functions ======"
aws lambda list-functions --region eu-north-1

echo "====== Listing All IAM Users ======"
aws iam list-users

echo "====== Listing Only IAM Usernames ======"
aws iam list-users --query 'Users[*].UserName' --output table

