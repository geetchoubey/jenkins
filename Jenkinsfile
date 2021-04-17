pipeline {
    agent any

    tools {nodejs "nodejs"}

    stages {
        stage('Build') {
            parallel {
                stage('Building server') {
                    steps  {
                        dir('backend') {
                            sh 'npm install'
                        }
                    }
                }

                stage('Building client') {
                    steps  {
                        dir('frontend') {
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