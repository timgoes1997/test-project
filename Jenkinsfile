pipeline {
    agent any

    stages {
        stage('Prerequisities') {
            steps {
                echo 'Starting prerequisities phase...'

		sh 'git pull'

                echo '... fishished prerequisities phase.'
            }
        }

        stage('Build') {
            steps {
                echo 'Starting build phase...'

                echo 'bash rebuild-and-run-build.sh'

                echo '... fishished build phase.'
            }
        }

        stage('Publish') {
            steps {
                echo 'Starting publish phase...'

                echo 'gradle artifactoryPublish'

                echo '... fishished publish phase.'
            }
        }

        stage('Retrieval') {
            steps {
                echo 'Starting retrieval phase...'

                echo 'bash get-latest-artifact.sh'

                echo '... fishished retrieval phase.'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Starting deploy phase...'

		sh 'bash rebuild-and-run-deploy.sh'

                echo '... fishished deploy phase.'
            }
        }
    }
}
