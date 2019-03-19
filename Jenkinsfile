pipeline {
    agent any
    environment {
        PKG_NAME = 'node-server'
        VERSION = '0.0.1'
    }
    stages {
        stage("Build") {
            steps {
                sh "chmod +x ./jenkins/*.sh"
                sh "./jenkins/buile.sh"
            }
        }
        stage("Deliver") {
            steps {
                sh "./jenkins/start.sh"
            }
        }
    }
}