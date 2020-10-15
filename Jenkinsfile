pipeline{
        agent any
        stages{
	    
            stage('Build Service 1'){
                steps{
                    sh "./service-1/build.sh"
                }
            }
	    stage('Push Service 1'){
                steps{
                    sh "./service-1/push.sh"
                }
            }
        }    
}
