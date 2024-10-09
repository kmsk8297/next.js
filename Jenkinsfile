pipeline {
    agent {
        docker {
            image 'node:21-alpine' // Use the appropriate Node.js version
            args '-u root:root' // Run as root to install dependencies
        }
    }

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
