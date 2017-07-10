node {
	stage('prepare Docker Image'){
		echo 'preparing docker image'
		def stdout = new StringWriter()
        def stderr = new StringWriter()
		['/bin/sh', '-c', "docker  build -t sumitsingh/repo:pipeline"].execute()
		['/bin/sh', '-c', "docker  login -u sumitsingh -p sumit08"].execute()
		['/bin/sh', '-c', "docker  push sumitsingh/repo:pipeline"].execute()		
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