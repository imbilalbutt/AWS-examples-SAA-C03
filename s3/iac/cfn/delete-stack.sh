#!/usr/bin/env bash

echo "Delete stack for S3..."

STACK_NAME="cfn-s3-simple"

aws cloudformation delete-stack \
--stack-name $STACK_NAME \
--region us-east-1