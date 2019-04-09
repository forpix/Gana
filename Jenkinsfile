pipeline {
    agent any
    stages {
        stage ('complition') {
            steps {
                withMaven(maven :apache-maven-3.5.2) {
                    sh 'mvn clean compile'

                }

            }
        }
        stage ('testing') {
            steps {
                withMaven(maven :apache-maven-3.5.2 ) {
                    sh 'mvn test'
                
                }
            }
        }
        stage ('deploying') {
            steps {
                withMaven (maven : apache-maven-3.5.2 ) {
                    sh 'mvn clean install'
                }
            }
        }
    }
}
