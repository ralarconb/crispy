pipeline {
    agent any
    tools {
        gradle 'Gradle-7.0'
    }
    stages {
        stage("build") {
            steps {
                echo "building the application..."
            }
        }
        stage("test") {
            steps {
                echo "testing the application..."
            }
        }
        stage("deploy") {
            steps {
                echo "deploying the application..."
            }
        }
        stage("run frontend") {
            steps {
                echo "executing yarn..."
                nodejs('NodeJS-16.0.0') {
                    sh 'yarn install'
                }
            }
        }
        stage("run backend") {
            steps {
                echo "executing gradle..."
                sh './gradle -v'
            }
        }
    }
}