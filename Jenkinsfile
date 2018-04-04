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
		sh 'gradle artifactoryPublish'

                echo '... fishished deploy phase.'
            }
        }
    }
}
