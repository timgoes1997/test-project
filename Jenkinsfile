pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Starting build...'

                echo 'Echo creating new docker image for gradle build and run...'
                sh 'docker build -t test-project-tag:latest .'
                sh 'docker run test-project-tag'

                echo 'end build.'
            }
        }

        stage('Code Analysis') {
            steps {
                echo 'Starting code analysis...'

                echo 'Running sonarcube server in a docker container...'
                sh 'docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube'

                echo 'Analyzing...'
                sh './deploy-to-sonar.sh'

                echo 'end of code analysis.'
            }
        }
    }
}
