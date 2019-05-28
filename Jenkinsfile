
pipeline {
      // Mark the code checkout 'stage'....
        stage ('Checkout the dockefile from GitHub') {
            git credentialsId: '54161647-f5a2-44c0-8769-a7502e0b144a', url: 'https://github.com/mikechernev/dockerised-java
        } 
       stage ('maven Build') {
           sh label: '', script: 'maven clean package'
  }
