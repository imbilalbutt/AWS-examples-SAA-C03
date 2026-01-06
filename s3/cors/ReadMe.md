## Create a bucket 
```sh
aws s3 mb s3://cors-func-ab-3033
```

## Change block public access

```sh
aws s3api put-public-access-block \
--bucket cors-func-ab-3033 \
--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Create a bucket policy
```sh
aws s3api put-bucket-policy --bucket cors-func-ab-3033 --policy file://bucket-policy.json
```


## Turn on static website hosting
```sh
aws s3api put-bucket-website --bucket cors-func-ab-3033 --website-configuration file://website.json
```

## Upload our index.html file and include a resource that would be cross-origin
```sh
aws s3 cp index.html s3://cors-func-ab-3033
```

## View the website and see if the index.html is there
http://cors-func-ab-3033.s3-website-eu-central-1.amazonaws.com

## Apply a CORS policy 
```sh
```