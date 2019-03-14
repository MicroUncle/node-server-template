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
                sh "npm install nrm -g"
                sh "nrm use cnpm"
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