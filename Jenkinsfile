node {
	stage('prepare Docker Image'){
		echo 'preparing docker image'
		sh 'echo "" > test.txt '
		sh "tail -f test.txt"
		echo 'docker image pushed successfully'
	}	
    stage('build'){
   echo 'stage build executed'
    }
    stage('test'){
        echo 'stage test executed'
    }
    stage('deploy'){
        echo 'stage deploy executed'
    }
}
