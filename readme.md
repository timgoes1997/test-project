### todo; clean up this file format to be markdown readable. looks good in vim, not in markdown.

--> Run jenkins build
--> Open http://localhost:9000/
--> Login: admin/admin
--> Create access token
--> Copy access token, paste into 'analyze-project.sh' --> login=<token>


--> Artifactory setup:
docker pull docker.bintray.io/jfrog/artifactory-oss:latest

// Without data volume:
docker run --name artifactory-container-name -d -p 8081:8081 docker.bintray.io/jfrog/artifactory-oss:latest

// With data volume
docker run --name artifactory-container-name -d -v ~/artifactory-data:/var/opt/jfrog/artifactory -p 8081:8081 docker.bintray.io/jfrog/artifactory-oss:latest

// Stop and remove a running container
docker stop artifactory-container-name; and docker rm artifactory-container-name

docker run --name artifactory-container-name -it --entrypoint=/bin/bash -v ~/artifactory-data:/var/opt/jfrog/artifactory -p 8081:8018 docker.bintray.io/jfrog/artifactory-oss:latest

username: admin
password: password

// Publish jar
curl -uadmin:password -T build/libs/* "http://localhost:8081/artifactory/generic-local/test-project-latest.jar"

// Retrieve jar
curl -uadmin:password -O "http://localhost:8081/artifactory/generic-local/test-project-latest.jar"
