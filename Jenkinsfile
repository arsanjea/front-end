pipeline {
    agent any
    tools {
        nodejs 'NodeJS 13.12.0'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'npm install'
                sh 'npm run test'
            }
        }
        stage('Package') {
            steps {
                echo 'Deploying....'
                sh 'npm install'
                sh 'npm run package'
                archiveArtifacts artifacts: '**/distribution/*.zip', fingerprint: true
            }
        }
    }
}
