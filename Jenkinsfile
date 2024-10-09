pipeline {
    agent any // Use any available agent

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/Devops8297/next.js.git', branch: 'main'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install' // Install dependencies
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test' // Run tests
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build' // Build the application
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                // Add your deployment steps here
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
