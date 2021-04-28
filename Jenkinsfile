pipeline {

    agent any
    
    tools {
        maven 'Maven3.8.1'
        jdk 'jdk9.0.4'
    }

    stages {
    	stage("build") {
    		steps {
    		    echo "Building the application..."
    		    sh 'mvn install'
    		}
		}        
    }
    
}