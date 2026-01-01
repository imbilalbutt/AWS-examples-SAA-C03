#!/usr/bin/env bash
# chmod u+x ./s3/bash-scripts/list-objects.sh

echo "List objects in S3 bucket..."

if [ -z "$1" ]; then
    echo "There needs to be a bucket name eg. ./create-bucket my-bucket-name"
    exit 1
fi

BUCKET_NAME=$1

aws s3api list-objects-v2 --bucket $BUCKET_NAME

echo "Bucket $BUCKET_NAME listed successfully."