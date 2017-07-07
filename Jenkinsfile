node {
	stage('prepare Docker Image'){
		echo 'preparing docker image'
		docker build -t sumitsingh/repo:pipeline
		docker login -u sumitsingh -p sumit08
		docker push sumitsingh/repo:pipeline
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