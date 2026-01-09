## Create a bucket

aws s3 mb s3://encrypt-client-fun-bab-232

## Create a file

echo "Hello world" > hello.txt

## Create Gemfile
cd ./s3/encryption-client/
bundle init
bundle install

bundle exec ruby encrypt.rb