## Create a bucket

aws s3 mb s3://class-fun-ab-6346

## create a file

echo "Hello world" > hello.txt
aws s3 cp hello.txt s3://class-fun-ab-6346 --storage-class STANDARD_IA


##Clean up
aws s3 rm s3://class-fun-ab-6346/hello.txt
aws s3 rb s3://class-fun-ab-6346/
