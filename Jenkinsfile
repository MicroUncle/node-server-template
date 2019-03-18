pipeline {
    agent any
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