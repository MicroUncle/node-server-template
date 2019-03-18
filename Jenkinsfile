pipeline {
    agent {
        dockerfile true
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
                input message: '点击中止'
            }
        }
    }
}