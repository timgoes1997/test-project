### todo; clean up this file format to be markdown readable. looks good in vim, not in markdown.

# Prerequisities:
> Run jenkins
> Run artifactory docker
docker run --name artifactory-container-name -d -v ~/artifactory-data:/var/opt/jfrog/artifactory -p 8081:8081 docker.bintray.io/jfrog/artifactory-oss:latest

--> bash rebuild-and-run-build.sh
--> gradle artifactoryPublish
--> bash get-latest-artifact.sh
--> bash rebuild-and-run-deploy.sh

# Notes:
> Stop and remove a running container
docker stop artifactory-container-name; and docker rm artifactory-containedocker stop artifactory-container-name; and docker rm artifactory-container-namer-name
