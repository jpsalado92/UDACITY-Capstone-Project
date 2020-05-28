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
                 sh '.\BuildDocker.sh'
             }
         }
         stage('Push image') {
             steps {
                 sh '''
                 .\UploadDocker.sh
                 '''
             }
         }
     }
}
