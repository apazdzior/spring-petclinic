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
                 sh 'docker build -t agata13/petclinic:1.0 .'
             } 
        }
        stage('Login') {
            steps {
                 sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'   
            }
        }
        stage('Push') {
            steps {
                 sh 'docker push agata13/petclinic:1.0'   
            }
        }
        post {
            always {
                sh 'docker logout'   
            }
        }  
    }
}
