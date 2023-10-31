pipeline{
    agent any
    stages {
    
        stage('Setup Python Virtual ENV for dependencies'){
       
      steps  {
            sh '''
            sudo chmod +x ./scripts/envsetup.sh
            sudo ./scripts/envsetup.sh
            '''}
        }
        stage('Setup Gunicorn Setup'){
            steps {
                sh '''
                sudo chmod +x ./scripts/gunicorn.sh
                sudo ./scripts/gunicorn.sh
                '''
            }
        }
        stage('setup NGINX'){
            steps {
                sh '''
                sudo chmod +x ./scripts/nginx.sh
                sudo ./scripts/nginx.sh
                '''
            }
        }
    }
}
