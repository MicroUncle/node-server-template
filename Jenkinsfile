pipeline {
    agent any
    stages {
        stage("Build") {
            steps {
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