
pipeline {
    
    stages {
        stage('SCM code Checkout') {
            steps {
                git credentialsId: "'54161647-f5a2-44c0-8769-a7502e0b144a', url: 'https://github.com/mikechernev/dockerised-java"
            }
        }
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}
