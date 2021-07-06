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
         stage('Image') {
            steps {
                sh "docker build -t spring-petclinic ."
            }
        }

    }
}
