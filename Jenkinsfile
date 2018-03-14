pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'gradle build'
                sh 'java -jar build/libs/ArtifactId-1.0-SNAPSHOT.jar'
                echo 'Finished building...'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'gradle build'
                sh 'java -jar build/libs/ArtifactId-1.0-SNAPSHOT.jar'
                echo 'Finished deploying.'
            }
        }
    }
}
