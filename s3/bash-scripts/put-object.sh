#!/usr/bin/env bash

set -e


if [ -z "$1" ]; then
    echo "There needs to be a bucket name eg. ./create-bucket my-bucket-name"
    exit 1
fi
BUCKET_NAME=$1

if [ -z "$2" ]; then
    echo "There needs to be a filename eg. ./create-bucket my-bucket-name"
    exit 1
fi
FILENAME=$2

OBJECT_KEY="$(basename "$FILENAME")"

aws s3api put-object \
    --bucket "$BUCKET_NAME" \
    --body "$FILENAME" \
    --key "$OBJECT_KEY"

echo "Uploaded $FILENAME to s3://$BUCKET_NAME/"