pipeline {
    agent {
        docker {
            image "node:8-alpine",
            args "-p 3120:3120 -tid --rm"
        }
    }
    stages {
        stage("Build") {
            steps {
                sh "npm install -g nrm"
                sh "nrm use cnpm"
                sh "npm install"
            }
        }
        stage("Deliver") {
            steps {
                sh "npm install -g pm2"
                sh "pm2 start index.js"
            }
        }
    }
}