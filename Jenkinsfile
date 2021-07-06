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
                 script{
                     def app = docker.build("petclinic/test")    
                 }
             }
       } 
          stage('Push image') {
                docker.withRegistry('https://hub.docker.com/repository/docker/agata13/new-petclinic', 'git') {            
                app.push                 
              }    
           }

    }
}
