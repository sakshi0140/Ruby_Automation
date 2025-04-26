pipeline {
    agent any

    environment {
        IMAGE_NAME = 'ruby-webrick-app'
        CONTAINER_NAME = 'webrick_server'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t $IMAGE_NAME .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop and remove any existing container
                    sh 'docker rm -f $CONTAINER_NAME || true'
                    // Run the new container
                    sh 'docker run -d -p 3000:3000 --name $CONTAINER_NAME $IMAGE_NAME'
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}
