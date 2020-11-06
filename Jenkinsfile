pipeline{
        agent any
        stages{
		
	    stage('Install Docker using ansible'){
                steps{
                    sh "./scripts/playbook.sh"
                }
            }
		
	    stage('Docker-compose build images'){
                steps{
                    sh "./scripts/docker_build.sh"
                }
            }
            stage('Running docker-compose'){
                steps{
                    sh "./scripts/docker_run.sh"
                }
            }
	    stage('Push images to Nexus'){
                steps{
                    sh "./scripts/docker_push.sh"
                }
            }
	    
        }    
}
