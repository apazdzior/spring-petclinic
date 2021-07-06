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
                     docker.withRegistry('https://registry.hub.docker.com', 'git')           
                     app.push()
                 }
             } 
         }  
      }

}
