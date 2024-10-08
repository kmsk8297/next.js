pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', // Replace with your desired branch
                   url: 'https://github.com/Devops8297/next.js.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
                sh 'npm run test'
            }
        }
        stage('Deploy') {
            when {
                expression {
                    env.BRANCH_NAME == 'main' || env.BRANCH_NAME == 'master'
                }
            }
            steps {
                // Your deployment steps here
                // For example, if deploying to a server:
                sh 'scp -r dist/ user@your-server:/path/to/deployment/directory'
            }
        }
    }
}
