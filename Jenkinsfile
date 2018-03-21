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

                sh 'docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube'
                sh './gradlew sonarqube -Dsonar.host.url=http://localhost:9000 -Dsonar.login=a474ad284cb356d8d5385dcc4e148fa3da4edeeb'

                echo '... fishished deploy phase.'
            }
        }
    }
}
