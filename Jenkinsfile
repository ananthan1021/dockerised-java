pipeline {
    agent any
    stages {
        stage('SCM code Checkout') {
            steps {
                git credentialsId: "54161647-f5a2-44c0-8769-a7502e0b144a", url: 'https://github.com/ananthan1021/dockerised-java.git'
            }
        }
        stage('Maven Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Upload artifacts'){
                   steps{
    rtUpload (
                     serverId: "Artifactory",
                     spec:
                     """{
                     "files": [
                     {
                     "pattern": "/var/lib/jenkins/workspace/artifactory/target/*.war",
                     "target": "example-repo-local"
                     }
                     ]
                     }"""
)
                                  }
             
                       } 
               }    
            }
        }
    }
}
