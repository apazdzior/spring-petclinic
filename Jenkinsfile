pipeline {
    agent any
    tools {
        maven 'maven'
    } 
    stages {
        def app     
        stage('Clone repository') {                   
            checkout scm    
        } 
        stage('Build') {
            steps {
                sh "mvn clean install"
            }
        }
         stage('Image') {
            steps {
                sh "docker build -t spring-petclinic ."
            }
        }

    }
}
