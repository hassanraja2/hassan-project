pipeline{
        agent any
        stages{
		
	    stage('Create Network'){
                steps{
                    sh "./network.sh"
                }
            }
            stage('Build Service 1'){
                steps{
                    sh "./service-1/build.sh"
                }
            }
	    stage('Push & Pull Service 1'){
                steps{
                    sh "./service-1/push.sh"
                }
            }
        }    
}
