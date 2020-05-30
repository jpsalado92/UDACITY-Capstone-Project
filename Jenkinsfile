pipeline {
     agent any
     stages {
         stage('Linting') {
             steps {
                 sh '''
                 hadolint Dockerfile'
                 '''
             }
         }
         stage('Build image') {
             steps {
                 sh '''
                 ShellScripts/BuildDocker.sh'
                 '''
             }
         }
         stage('Push image') {
             steps {
                 sh '''
                 ShellScripts/UploadDocker.sh
                 '''
             }
         }
         stage('Update Controller') {
             steps {
                 sh '''
                 ShellScripts/UpdateController.sh
                 '''
             }
         }
         stage('Deploy Controller') {
             steps {
                 sh '''
                 ShellScripts/DeployController.sh
                 '''
             }
         }
    }
}
