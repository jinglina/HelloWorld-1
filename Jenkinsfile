pipeline {
    agent {label 'slave1'}
    stages {
        stage('Preparation') {
                    steps{
                        echo "1.Prepare Stage"
                        checkout scm
                        script {
                            git_tag = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
                            build_tag = "${env.BRANCH_NAME}-${git_tag}"
                            loginName = "admin"
                            loginPassword = "Harbor12345"
                            echo "branch: ${env.BRANCH_NAME}"
                            echo "build tag: ${build_tag}"
                        }
                    }

        }
        
        stage('login oc & docker regristry') {
            steps{
                echo "2.login oc & docker regristry"
                
                sh "docker login -u '${loginName}' -p '${loginPassword}' http://10.180.249.11:30002"
            }

        }
       
        stage('Build') {
            steps{
                echo "3.Build Stage"
                // sh "gcc HelloWorld.c"
                //sh "mvn clean build -DskipTests"
                sh "docker build -f Dockerfile -t 10.180.249.11:30002/library/ctests:latest ."
                sh "docker push 10.180.249.11:30002/library/ctests:latest"
            }
        }

    }
}
