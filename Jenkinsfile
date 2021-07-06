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
                 script { 
                        sh "docker build -t petclinic ."
                 }
             } 
         }  
      }

}
