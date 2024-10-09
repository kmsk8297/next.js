pipeline {
    agent any // This allows Jenkins to use any available executor

    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/Devops8297/next.js.git', branch: 'main'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install' // Assuming npm is installed globally on your Jenkins server
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test' // Assuming your tests are defined in package.json
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build' // This should build your Next.js application
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
