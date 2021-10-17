pipeline {
    agent any 
    stages {
        
        stage('Build Docker image'){
            steps {
              
                sh 'docker build -t  pranavph/incubyte:${BUILD_NUMBER} .'
            }
        }

        stage('Docker Login'){
            
            steps {
                 withCredentials([string(credentialsId: 'DockerId', variable: 'Dockerpwd')]) {
                    sh "docker login -u pranavph -p ${Dockerpwd}"
                }
            }                
        }

        stage('Docker Push'){
            steps {
                sh 'docker push pranavph/incubyte:${BUILD_NUMBER}'
            }
        }
        
        stage('Docker deploy'){
            steps {
               
                sh 'docker run -itd -p  9000:8000 pranavph/incubyte:${BUILD_NUMBER}'
            }
        }
    }
}