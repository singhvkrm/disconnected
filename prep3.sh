for image in {jboss-amq-6/amq63-openshift,jboss-datagrid-7/datagrid71-openshift,jboss-datagrid-7/datagrid71-client-openshift,jboss-datavirt-6/datavirt63-openshift,jboss-datavirt-6/datavirt63-driver-openshift,jboss-decisionserver-6/decisionserver64-openshift,jboss-processserver-6/processserver64-openshift,jboss-eap-6/eap64-openshift,jboss-eap-7/eap70-openshift,jboss-webserver-3/webserver31-tomcat7-openshift,jboss-webserver-3/webserver31-tomcat8-openshift,openshift3/jenkins-1-rhel7,openshift3/jenkins-2-rhel7,openshift3/jenkins-agent-maven-35-rhel7,openshift3/jenkins-agent-nodejs-8-rhel7,openshift3/jenkins-slave-base-rhel7,openshift3/jenkins-slave-maven-rhel7,openshift3/jenkins-slave-nodejs-rhel7,rhscl/mongodb-32-rhel7,rhscl/mysql-57-rhel7,rhscl/perl-524-rhel7,rhscl/php-56-rhel7,rhscl/postgresql-95-rhel7,rhscl/python-35-rhel7,redhat-sso-7/sso70-openshift,rhscl/ruby-24-rhel7,redhat-openjdk-18/openjdk18-openshift,redhat-sso-7/sso71-openshift,rhscl/nodejs-6-rhel7,rhscl/mariadb-101-rhel7}; do \
     docker pull registry.access.redhat.com/$image
   done
 
echo "go to images directory" 
cd /root/images
docker save -o ose3-images.tar \
    registry.redhat.io/openshift3/apb-base \
    registry.redhat.io/openshift3/apb-tools \
    registry.redhat.io/openshift3/automation-broker-apb \
    registry.redhat.io/openshift3/csi-attacher \
    registry.redhat.io/openshift3/csi-driver-registrar \
    registry.redhat.io/openshift3/csi-livenessprobe \
    registry.redhat.io/openshift3/csi-provisioner \
    registry.redhat.io/openshift3/grafana \
    registry.redhat.io/openshift3/image-inspector \
    registry.redhat.io/openshift3/local-storage-provisioner \
    registry.redhat.io/openshift3/manila-provisioner \
    registry.redhat.io/openshift3/mariadb-apb \
    registry.redhat.io/openshift3/mediawiki \
    registry.redhat.io/openshift3/mediawiki-apb \
    registry.redhat.io/openshift3/mysql-apb \
    registry.redhat.io/openshift3/ose-ansible \
    registry.redhat.io/openshift3/ose-ansible-service-broker \
    registry.redhat.io/openshift3/ose-cli \
    registry.redhat.io/openshift3/ose-cluster-autoscaler \
    registry.redhat.io/openshift3/ose-cluster-capacity \
    registry.redhat.io/openshift3/ose-cluster-monitoring-operator \
    registry.redhat.io/openshift3/ose-console \
    registry.redhat.io/openshift3/ose-configmap-reloader \
    registry.redhat.io/openshift3/ose-control-plane \
    registry.redhat.io/openshift3/ose-deployer \
    registry.redhat.io/openshift3/ose-descheduler \
    registry.redhat.io/openshift3/ose-docker-builder \
    registry.redhat.io/openshift3/ose-docker-registry \
    registry.redhat.io/openshift3/ose-efs-provisioner \
    registry.redhat.io/openshift3/ose-egress-dns-proxy \
    registry.redhat.io/openshift3/ose-egress-http-proxy \
    registry.redhat.io/openshift3/ose-egress-router \
    registry.redhat.io/openshift3/ose-haproxy-router \
    registry.redhat.io/openshift3/ose-hyperkube \
    registry.redhat.io/openshift3/ose-hypershift \
    registry.redhat.io/openshift3/ose-keepalived-ipfailover \
    registry.redhat.io/openshift3/ose-kube-rbac-proxy \
    registry.redhat.io/openshift3/ose-kube-state-metrics \
    registry.redhat.io/openshift3/ose-metrics-server \
    registry.redhat.io/openshift3/ose-node \
    registry.redhat.io/openshift3/ose-node-problem-detector \
    registry.redhat.io/openshift3/ose-operator-lifecycle-manager \
    registry.redhat.io/openshift3/ose-ovn-kubernetes \
    registry.redhat.io/openshift3/ose-pod \
    registry.redhat.io/openshift3/ose-prometheus-config-reloader \
    registry.redhat.io/openshift3/ose-prometheus-operator \
    registry.redhat.io/openshift3/ose-recycler \
    registry.redhat.io/openshift3/ose-service-catalog \
    registry.redhat.io/openshift3/ose-template-service-broker \
    registry.redhat.io/openshift3/ose-tests \
    registry.redhat.io/openshift3/ose-web-console \
    registry.redhat.io/openshift3/postgresql-apb \
    registry.redhat.io/openshift3/registry-console \
    registry.redhat.io/openshift3/snapshot-controller \
    registry.redhat.io/openshift3/snapshot-provisioner \
    registry.redhat.io/rhel7/etcd:3.2.22

docker save -o ose3-optional-imags.tar \
    registry.redhat.io/openshift3/metrics-cassandra \
    registry.redhat.io/openshift3/metrics-hawkular-metrics \
    registry.redhat.io/openshift3/metrics-hawkular-openshift-agent \
    registry.redhat.io/openshift3/metrics-heapster \
    registry.redhat.io/openshift3/metrics-schema-installer \
    registry.redhat.io/openshift3/oauth-proxy \
    registry.redhat.io/openshift3/ose-logging-curator5 \
    registry.redhat.io/openshift3/ose-logging-elasticsearch5 \
    registry.redhat.io/openshift3/ose-logging-eventrouter \
    registry.redhat.io/openshift3/ose-logging-fluentd \
    registry.redhat.io/openshift3/ose-logging-kibana5 \
    registry.redhat.io/openshift3/prometheus \
    registry.redhat.io/openshift3/prometheus-alert-buffer \
    registry.redhat.io/openshift3/prometheus-alertmanager \
    registry.redhat.io/openshift3/prometheus-node-exporter \
    registry.redhat.io/cloudforms46/cfme-openshift-postgresql \
    registry.redhat.io/cloudforms46/cfme-openshift-memcached \
    registry.redhat.io/cloudforms46/cfme-openshift-app-ui \
    registry.redhat.io/cloudforms46/cfme-openshift-app \
    registry.redhat.io/cloudforms46/cfme-openshift-embedded-ansible \
    registry.redhat.io/cloudforms46/cfme-openshift-httpd \
    registry.redhat.io/cloudforms46/cfme-httpd-configmap-generator \
    registry.redhat.io/rhgs3/rhgs-server-rhel7 \
    registry.redhat.io/rhgs3/rhgs-volmanager-rhel7 \
    registry.redhat.io/rhgs3/rhgs-gluster-block-prov-rhel7 \
    registry.redhat.io/rhgs3/rhgs-s3-server-rhel7
        
docker save -o ose3-builder-images.tar \
    registry.redhat.io/jboss-webserver-3/webserver31-tomcat7-openshift:v3.11.16 \
    registry.redhat.io/jboss-webserver-3/webserver31-tomcat8-openshift:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-2-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-agent-maven-35-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-agent-nodejs-8-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-slave-base-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-slave-maven-rhel7:v3.11.16 \
    registry.redhat.io/openshift3/jenkins-slave-nodejs-rhel7:v3.11.16

docker load -i ose3-images.tar
docker load -i ose3-builder-images.tar
docker load -i ose3-optional-images.tar
    
