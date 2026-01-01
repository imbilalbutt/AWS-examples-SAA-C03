
``` sh
mvn archetype:generate \
-DgroupId=aws.benzenebeaureu.app \
-DartifactId=aws-default \
-DarchetypeArtifactId=maven-archetype-quickstart \
-DarchetypeVersion=1.4 \
-DinteractiveMode=false
```

``` sh
mvn -B archetype:generate \
-DarchetypeGroupId=software.amazon.awssdk \
-DarchetypeArtifactId=archetype-lambda -Dservice=s3 -Dregion=US_EAST_1 \
-DarchetypeVersion=2.21.29 \
-DgroupId=aws.benzenebeaureu.app \
-DartifactId=aws-default
```