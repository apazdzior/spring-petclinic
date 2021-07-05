pipeline {
    agent any
    
    tools {
        //indicates to Jenkins that I want to use gradle in Jenkinsfile
        maven "maven"
    }
    
    stages {
        stage('Build') {
            steps {
                  // Get some code from a GitHub repository
                git 'https://github.com/apazdzior/spring-petclinic.git'
                sh "mvn clean install"
            }
        }

    }
}
