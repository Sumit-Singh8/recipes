# using jenkins slave base image from GCP Container Registry which is based on jenkinsci/jnlp-slave image 
FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave

# Switching to root  to install required package on slave
USER root
RUN apt-get update -y
# installing Apache maven
RUN apt-get install -y maven

# installing git client
RUN apt-get install -y git

# installing vim editor
RUN apt-get install -y vim