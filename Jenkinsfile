pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'gradle build'
                sh 'java -jar build/libs/ArtifactId-1.0-SNAPSHOT.jar'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
