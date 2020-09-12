pipeline {
    agent {
        dockerfile true
    }

    stages {
	    stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'feaaf2b8-524d-4ead-bdba-65d12938a0ff', url: 'https://github.com/akanksha2897/php.git']]])
            }
        }
        stage('Build') {
            steps {
                    git credentialsId: 'feaaf2b8-524d-4ead-bdba-65d12938a0ff', url: 'https://github.com/akanksha2897/php.git'
                    bat label: '', script: 'docker build -f Dockerfile .'
                    bat label: '', script: 'docker build -f Dockerfile (2) .'
                    }
           }
        stage('Test') {
            steps {
                echo 'Job is being Test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Job is being Deploy'
            }
        }
    }
}
