pipeline {
    agent any
	stages {
	    stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'feaaf2b8-524d-4ead-bdba-65d12938a0ff', url: 'https://github.com/akanksha2897/php.git']]])
            }
        }
        stage('Build') {
            steps {
                    git credentialsId: 'feaaf2b8-524d-4ead-bdba-65d12938a0ff', url: 'https://github.com/akanksha2897/php.git'
                    bat label: '', script: 'docker build -f /php/Dockerfile .'
                    bat label: '', script: 'docker build -f /node js/Dockerfile .'
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
