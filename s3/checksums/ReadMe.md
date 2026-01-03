## Create a new S3 Bucket

``` md
aws s3 mb s3://checksums-examples-ab-23566 --region eu-central-1
```


## Create a file that we will do do a checksum om

```md
echo "HelloMars" > myfile.txt
```


## Get a checksum of a file for md5
```md
md5sum myfile.txt
```


## Upload out file to s3
```md
aws s3 cp myfile.txt s3://checksums-examples-ab-23566
aws s3api get-object --bucket checksums-examples-ab-23566 --key myfile.txt
```