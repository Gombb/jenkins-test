
node {
    stage("Get Source") {
        echo "Pulling from github."
        git ("https://github.com/Gombb/jenkins-test.git")
        if (!fileExists("docker-compose.yaml")) {
            error('Dockerfile missing.')
        
        } 
    }
    stage("Build with docker") {
        sh "docker-compose up"
    }
}