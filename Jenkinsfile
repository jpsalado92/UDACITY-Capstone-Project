pipeline {
     agent any
     stages {
         stage('Linting') {
             steps {
                 sh 'hadolint Dockerfile'
             }
         }
         stage('Build image') {
             steps {
                 sh '''
                     docker build -t jpsalado92/devops-capstone:latest .
                 '''
             }
         }
         stage('Push image') {
             steps {
                 sh '''
                     cat secrets/token | docker login --username=jpsalado92 --password-stdin
                     docker push jpsalado92/devops-capstone:latest
                 '''
             }
         }
     }
}
