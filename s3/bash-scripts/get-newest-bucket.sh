#!/usr/bin/env bash

# aws s3 ls

# new file: run this command first on terminal chmod u+x s3-bash-scripts/get-newest-bucket.sh

aws s3api list-buckets | jq -r '.Buckets | sort_by(.CreationDate) | reverse | .[0] | .Name'
