pipeline {
    agent any
    stages {
        
    }
}


node {
    stage("Get Source") {
        steps {
            echo "Pulling from github."
            git ("https://github.com/Gombb/jenkins-test.git")
            if (!fileExists("docker-compose.yaml")) {
                error('Dockerfile missing.')
            }
        } 
    }
    stage("Build with docker") {
        steps {
            sh "sudo docker build -t flask-app"
        }
    }
    stage("Run docker container") {
        sh "sudo docker run -p 8000:80 --name flask-app -d flask-app"
    }
}