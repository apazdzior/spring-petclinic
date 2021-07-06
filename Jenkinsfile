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
               
                        sh 'docker build -t agata13/petclinic:latest .'
                 
             } 
         }
        stage('Login') {
            steps{
                script {
                        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'   
                }
            }
        }
        stage('Push') {
            steps{
                script {
                        sh 'docker push agata13/petclinic:latest'   
                }
            }
        }
      }

}
