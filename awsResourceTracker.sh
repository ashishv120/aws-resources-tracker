#!/bin/bash

######
# 
######

Set -x

#AWS EC2 Instances List
echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#AWS S3 Buckets List
echo "Print list of S3 buckets"
aws s3 ls

#AWS IAM USERS
echo "Print list of IAM Users"
aws iam list-users

#AWS IAM Roles
echo "Print list of IAM Roles"
aws iam list-roles | jq '.Roles[].RoleName'

