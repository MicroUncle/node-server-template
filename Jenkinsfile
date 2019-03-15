pipeline {
    agent {
        docker {
            image "node:8-alpine"
            args "-p 3000:8000 -itd --name=node-server"
        }
    }
    stages {
        stage("Build") {
            steps {
                sh "docker exec -ti node-server bash"
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