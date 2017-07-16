/*
node {
	stage('prepare Docker Image'){
		checkout scm
		echo 'preparing docker image'
		sh "docker  build -t sumitsingh/repo:pipeline ."
		sh "docker  login -u sumitsingh -p sumit08"
		sh "docker  push sumitsingh/repo:pipeline"		
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
*/

stage("Read file"){
 def v=readFile('pom.xml')
}

