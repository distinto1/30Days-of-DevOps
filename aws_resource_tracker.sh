#!/bin/bash

#################################################################################
#
# Authour: Daniel
# Date: 20-10-2023
#
# Version: V1
#
# This script will report AWS resource usuage
#
##################################################################################

set -x

# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM USERS

# list S3 buckets
echo "Print list of S3 buckets"
aws s3 ls 

# list ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list Lambda functions
echo "Print a list of lambda functions"
aws lambda list-functions 

# list IAM users
echo "Print a list of IAM Users"
aws iam list-users 