#!/usr/bin/env bash
# chmod u+x ./s3/bash-scripts/delete-objects.sh 

echo "Deleting an objects inside S3 bucket..."

if [ -z "$1" ]; then
    echo "There needs to be a bucket name eg. ./delete-bucket my-bucket-name"
    exit 1
fi

BUCKET_NAME=$1

aws s3api delete-objects --bucket $BUCKET_NAME --delete "Objects=[{Key=files/}]"