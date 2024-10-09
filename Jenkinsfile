pipeline {
    agent any

    environment {
        NODE_VERSION = '21.0.0' // Specify the Node.js version required
    }

    stages {
        stage('Setup Node.js') {
            steps {
                script {
                    // Install Node.js and npm using nvm (if it's installed)
                    sh '''
                    . ~/.nvm/nvm.sh
                    nvm install $NODE_VERSION
                    nvm use $NODE_VERSION
                    '''
                }
            }
        }

        stage('Checkout Code') {
            steps {
                // Checkout the code from the GitHub repository
                git url: 'https://github.com/Devops8297/next.js.git', branch: 'main'
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install npm dependencies
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                // Run tests (if there are any defined in package.json)
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                // Build the Next.js project
                sh 'npm run build'
            }
        }

        stage('Deploy') {
            steps {
                // Example deploy step, adjust this according to your deployment strategy
                echo 'Deploying the application...'
                // You can add a deployment script here, such as using scp, rsync, or another tool.
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
