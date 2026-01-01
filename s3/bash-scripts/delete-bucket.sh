#!/usr/bin/env bash

echo "Deleting an S3 bucket..."

if [ -z "$1" ]; then
    echo "There needs to be a bucket name eg. ./delete-bucket my-bucket-name"
    exit 1
fi

BUCKET_NAME=$1

aws s3api delete-bucket --bucket "$BUCKET_NAME" 

echo "Bucket $BUCKET_NAME deleted successfully."