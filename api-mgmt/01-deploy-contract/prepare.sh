#!/bin/bash -x

install_maven() {
    local MAVEN_VERSION=$1
    echo "Installing Maven ${MAVEN_VERSION}"
    wget https://www.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz -P /tmp
    tar xf /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /opt
    ln -s /opt/apache-maven-${MAVEN_VERSION} /opt/maven
    ln -s /opt/apache-maven-${MAVEN_VERSION}/bin/mvn /usr/local/bin/mvn

}

apt-get update -y
apt-get -y --force-yes install openjdk-11-jdk <</dev/null
echo "Installing Maven"
install_maven 3.8.6
