#!/bin/bash

##################
# Author: Ashish
# Version: v1
# This script will help users to track the resources or services usage from the AWS Cloud
# We can extend more resources trackage with use of aws cli to retrieve the information
# like aws lambda functions, aws ecs, eks, cloudwatch, etc...
# jq - JQuery Parser [retrieve the information from the JSON body]
##################

set -x #In Debug Mode

#AWS EC2 Instances List
echo "List of EC2 Instances!!!"
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

