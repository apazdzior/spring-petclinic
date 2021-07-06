pipeline {
    agent any
    tools {
        maven 'maven'
    } 
    stages {
 
        stage('Build') {
            steps {
                sh "mvn clean install"
            }
        }
         stage('Build image') {
             steps {
                def app
                app = docker.build("petclinic/test")    
             }
       }  

    }
}
