
node {
    stage("Get Source") {
        echo "Pulling from github."
        git ("https://github.com/Gombb/jenkins-test.git")
    }
    stage("Build with docker") {
        sh "docker-compose up"
    }
}