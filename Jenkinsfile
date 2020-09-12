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
		    cd php
                    bat label: '', script: 'build: ./docker/php/Dockerfile'
		    cd node js
                    bat label: '', script: 'build: ./docker/node js/Dockerfile'
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
