pipeline {
    agent any

    tools {nodejs "node"}

    stages {
        stage('Build') {
            parallel {
                stage('Building server') {
                    dir('backend') {
                        steps {
                            sh 'npm install'
                        }
                    }
                }

                stage('Building client') {
                    dir('frontend') {
                        steps {
                            sh 'npm install'
                        }
                    }
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}