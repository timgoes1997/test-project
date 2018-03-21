pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Starting build...'
                sh 'gradle build'
                echo 'end build.'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Starting deploy...'
                sh 'java -jar build/libs/ArtifactId-1.0-SNAPSHOT.jar'
                echo 'end deploy.'
            }
        }
    }
}
