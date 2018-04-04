#!/bin/bash
GRADLE_PROPERTIES_FILE=gradle.properties
 
function getProperty {
    PROP_KEY=$1
    PROP_VALUE=`cat $GRADLE_PROPERTIES_FILE | grep "$PROP_KEY" | cut -d'=' -f2`
    echo $PROP_VALUE
}
CURRENT_VERSION=$(getProperty "currentVersion")
#CURRENT_VERSION=$(echo $CURRENT_VERSION | sed 's/ *-.*//')
#echo $CURRENT_VERSION

#curl -u admin:password -Q PUT "http://localhost:8081/artifactory/libs-snapshot-local/test-project/$CURRENT_VERSION/test-project-$CURRENT_VERSON.jar"

# http://localhost:8081/artifactory/libs-snapshot-local/test-project/1.0.8-SNAPSHOT/test-project-1.0.8-SNAPSHOT.jar
URL="http://localhost:8081/artifactory/libs-snapshot-local/test-project/$CURRENT_VERSION/test-project-$CURRENT_VERSION.jar"
echo $URL

curl -u admin:password "http://localhost:8081/artifactory/libs-snapshot-local/test-project/$CURRENT_VERSION/test-project-$CURRENT_VERSION.jar" --output build/libs/test-project-latest.jar
