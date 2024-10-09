pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/Devops8297/next.js.git', branch: 'main'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
            }
        }
    }

    post {
        success {
            echo 'Build and deployment were successful.'
        }
        failure {
            echo 'Build or deployment failed.'
        }
    }
}
