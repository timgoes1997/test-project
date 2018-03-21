pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Starting build phase...'

                echo 'Building build docker image...'
                sh 'docker build -t test-project-tag:latest . && docker run test-project-tag'

                echo '... fishished build phase.'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Starting deploy phase...'

                sh 'remove-old-sonarqube-server.sh'
                sh 'docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube'

                echo '... fishished deploy phase.'
            }
        }
    }
}
