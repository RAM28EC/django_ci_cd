pipeline{
    agent any
    stages {
    
        stage('Setup Python Virtual ENV for dependencies'){
       
      steps  {
            sh '''
            chmod +x ./scripts/envsetup.sh
            echo "root" | sudo -S ./scripts/envsetup.sh

            '''}
        }
        stage('Setup Gunicorn Setup'){
            steps {
                sh '''
                chmod +x ./scripts/gunicorn.sh
                echo "root" | sudo -S ./scripts/gunicorn.sh
                '''
            }
        }
        stage('setup NGINX'){
            steps {
                sh '''
                chmod +x ./scripts/nginx.sh
                echo "root" | sudo -S ./scripts/nginx.sh
                '''
            }
        }
    }
}
