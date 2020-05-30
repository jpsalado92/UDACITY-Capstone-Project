pipeline {
     agent any
     stages {
         stage('Linting') {
             steps {
                 sh '''
                 hadolint Dockerfile
                 '''
             }
         }
         stage('Build image') {
             steps {
                 sh '''
                 ./BuildDocker.sh
                 '''
             }
         }
         stage('Push image') {
             steps {
                 sh '''
                 ./UploadDocker.sh
                 '''
             }
         }
         stage('Update Controller') {
             steps {
                 withAWS(region:'us-west-2', credentials:'AWS-Cluster-Credentials') {
                     sh '''
		     ./DeployController.sh
                     '''
                 }
             }
         }
	 stage('Switch LoadBalancer') {
	     steps {
                 withAWS(region:'us-west-2', credentials:'AWS-Cluster-Credentials') {
                     sh '''
                     ./SwitchLB.sh
                     '''
                 }
             }
	 }
    }
}
