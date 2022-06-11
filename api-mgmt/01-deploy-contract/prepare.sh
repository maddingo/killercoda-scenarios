#!/bin/bash

MAVEN_VERSION=3.8.6

apt-get update -y
apt-get install -y openjdk-11-jdk
wget https://www-us.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -P /tmp
tar xf /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt
ln -s /opt/apache-maven-3.6.3 /opt/maven

cat > /etcprofile.d/maven.sh <<EOF
#export JAVA_HOME=/usr/lib/jvm/default-java
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}
EOF