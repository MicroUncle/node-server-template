pipeline {
    agent {
        docker {
            image "node:6-alpine"
            args "-p 3000:8000"
        }
    }
    stages {
        stage("Build") {
            steps {
                sh "npm install"
            }
        }
        stage("Deliver") {
            steps {
                sh "npm start"
            }
        }
    }
}