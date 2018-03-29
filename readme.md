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


// Retrieve jar





Complete build-to-deploy overview (code analysis yet to be implemented):

// This instantiates a new docker container based on a newly created image, with gradle included. At the end of the gradle build, copies generated jar back into <rootprojectdir>/build/docker-build-output/<jarname>.jar
bash rebuild-and-run-build.sh

// This publishes the jar file to Artifactory under the name 'test-project-latest.jar'. Version control to be implemented here, this is just a sample project.
curl -uadmin:APtWBKequi4kSpAYtCbS4WFsK7 -T build/docker-build-output/* "http://localhost:8081/artifactory/generic-local/test-project-latest.jar"

// This retrieves the latest jar file from Artifactory. Here again, this is actually useless to do as a whole, but I'm just demonstrating the use of the Artifactory CLI interface here.
curl -uadmin:APtWBKequi4kSpAYtCbS4WFsK7 -O "http://localhost:8081/artifactory/generic-local/test-project-latest.jar"

// This instantiates a new docker container based on a newly created image, with the JRE software on it. It copies the retrieved jar file from Artifactory into the container, running it there.
bash rebuild-and-run-deploy.sh
