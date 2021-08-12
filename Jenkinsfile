
node {
    stage("Get Source") {
        echo "Pulling from github."
        git ("https://github.com/Gombb/jenkins-test.git")
    }

    stage("clear containers") {
        sh "docker rm -f ${docker ps -a -q}"
    }

    stage("Build with docker") {
        sh "docker-compose up"
    }
}