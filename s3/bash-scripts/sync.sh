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

OUTPUT_DIR="/tmp/s3-bash-scripts"

rm -r $OUTPUT_DIR

mkdir -p $OUTPUT_DIR

NUM_FILES=$((RANDOM % 6 + 5))

for ((i=1; i <= $NUM_FILES; i++)); do

    FILENAME="$OUTPUT_DIR/${FILENAME_PREFIX}_$i.txt"

    dd if=/dev/urandom of=$FILENAME bs=1024 count=$((RANDOM % 1024 + 1)) 2> /dev/null

    echo "This is file number $i" > $FILENAME

    echo "Created $FILENAME"
done

tree $OUTPUT_DIR

aws s3 sync $OUTPUT_DIR s3://$BUCKET_NAME/files/