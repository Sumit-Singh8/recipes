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

 podTemplate(name: 'jnlp' , label: 'mypod', containers: [
    containerTemplate(name: 'jnlp', image: 'sumitsingh/repo:pipeline',
	workingDir: '/root/', args: '${computer.jnlpmac} ${computer.name}' , command: '')
   ], volumes: [
   hostPathVolume(hostPath: '/usr/bin/docker' , mountPath : '/usr/bin/docker') , 
   hostPathVolume(hostPath: '/var/run/docker.sock' , mountPath: '/var/run/docker.sock')],
   )
{
 node ('mypod') {
stage("Read file"){
	checkout scm
 def v=readFile('buildInfo')
	if(v){
		echo "data found"
	}
	else{
		echo "no data"
		echo 'preparing docker image'
		sh "docker  build -t sumitsingh/repo:pipeline ."
		sh "docker  login -u sumitsingh -p sumit08"
		sh "docker  push sumitsingh/repo:pipeline"		
		echo 'docker image pushed successfully'
		
		 podTemplate(name: 'jnlp' , label: 'mypodNew', containers: [
    containerTemplate(name: 'jnlp', image: 'sumitsingh/repo:reveal_4',
	workingDir: '/root/', args: '${computer.jnlpmac} ${computer.name}' , command: '')
   ], volumes: [
   hostPathVolume(hostPath: '/usr/bin/docker' , mountPath : '/usr/bin/docker') , 
   hostPathVolume(hostPath: '/var/run/docker.sock' , mountPath: '/var/run/docker.sock')],
   )
		{
			 node ('mypodNew') {
			stage("in new pod")	{
				
				echo "New pod template"
				sh "bower -v"
			}
			 }
		}
	}
}
}
}


