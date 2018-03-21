pipeline {
    agent any

    stages {
        stage('Code Analysis') {
            steps {
                echo 'Starting code analysis...'

                echo 'Running sonarcube server in a docker container...'
                sh 'docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube'

                echo 'Analyzing...'
                sh './gradlew sonarqube -Dsonar.host.url=http://localhost:9000 -Dsonar.login=9017423c4f5072b409ff667fe4c538704d15c831'

                echo 'end of code analysis.'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Starting build...'

                echo 'Echo creating new docker image for gradle build and run...'
                sh 'docker build -t test-project-tag:latest .'
                sh 'docker run test-project-tag'

                echo 'end build.'
            }
        }
    }
}
