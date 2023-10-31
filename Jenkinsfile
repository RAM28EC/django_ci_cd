pipeline {
    agent any

    stages {
        stage('Setup Python Virtual ENV for dependencies') {
            steps {
                script {
                    echo '=== Setting up Python Virtual Environment ==='
                    sh 'chmod +x ./envsetup.sh'
                    sh './envsetup.sh'
                }
            }
        }

        stage('Setup Gunicorn Setup') {
            steps {
                script {
                    echo '=== Setting up Gunicorn ==='
                    sh 'chmod +x ./gunicorn.sh'
                    sh './gunicorn.sh'
                }
            }
        }

        stage('Setup NGINX') {
            steps {
                script {
                    echo '=== Setting up NGINX ==='
                    sh 'chmod +x ./nginx.sh'
                    sh './nginx.sh'
                }
            }
        }
    }
}
