pipeline {
    agent any
    tools {
        maven 'maven'
    }
    environment{
        DOCKERHUB_CREDENTIALS = credentials('agata13-dockerhub')   
    }
    stages {
 
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
         stage('Build image') {
             steps {
                 script { 
                        sh 'docker build -t agata13/petclinic:latest .'
                 }
             } 
         }
        stage('Login') {
            steps{
                script {
                        sh 'docker push agata13/petclinic:latest'   
                }
            }
        }
      }

}
