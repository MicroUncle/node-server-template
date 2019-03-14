pipeline {
    agent {
        docker {
            image "node:8-alpine"
            args "-p 3000:8000 --rm --name=node-server -d"
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
                sh "pm2 start index"
            }
        }
    }
}