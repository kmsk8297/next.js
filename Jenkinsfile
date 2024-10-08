pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm {
                    class: 'hudson.plugins.git.GitSCMSource'
                    url: 'https://github.com/Devops8297/next.js.git' // Replace with your actual repository URL
                    branches: [[$class: 'hudson.plugins.git.BranchSpec', name: '*']]
                }
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
