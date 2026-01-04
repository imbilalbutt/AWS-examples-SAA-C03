## Create a bucket

aws s3 mb s3://metadata-fun-ab-12421

## Create a new file

echo "Hello Mars" > hello.txt

## Upload fule with meta-data

aws s3api put-object --bucket metadata-fun-ab-12421 --key hello.txt --body hello.txt --metadata Planet=Mars

## Get metadata through head oject
aws s3api head-object --bucket metadata-fun-ab-12421 --key hello.txt