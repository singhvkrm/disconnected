echo "builder-imags done" 
docker save -o ose3-builder-images.tar \
    registry.redhat.io/jboss-webserver-3/webserver31-tomcat7-openshift:v3.11.16 \
    registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-2-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-agent-maven-35-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-agent-nodejs-8-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-slave-base-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-slave-maven-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-slave-nodejs-rhel7:v3.11.16
echo "ose3-builder-images.tar done" 
docker load -i ose3-builder-images.tar
