pipeline{
        agent any
        stages{
		
	    stage('Docker-compose build images'){
                steps{
                    sh "./docker_build.sh"
                }
            }
            stage('Running docker-compose'){
                steps{
                    sh "./docker_run.sh"
                }
            }
	    stage('Push images to Nexus'){
                steps{
                    sh "./docker_push.sh"
                }
            }
	    
        }    
}
