#!/bin/bash

echo "This tool sets up the node for the scenario"

# Katacoda doesn't provide a Java 11 environment yet
sudo apt -qq install -y zip
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 11.0.1-open

EXTERNAL_IP=$(dig -4 @resolver1.opendns.com ANY myip.opendns.com +short)
echo "External IP address: ${EXTERNAL_IP}"

# Download EC distribution
echo -n "EC Version [12.1.0]: "
read ec_version
ec_version=${ec_version:-12.1.0}
echo -n "Download Host: "
read dl_host
echo -n "Download Username: "
read dl_user
echo "Download Password: "
read -s dl_password

echo "Ask the Admin to open for IP address ${EXTERNAL_IP}"
echo "Press ENTER, when done and the download can begin"

#ec_download_url="https://${dl_host}/repository/maven-mirror/com/ec/frmw/ec-app-install/ec-app-install/${ec_version}/ec-app-install-${ec_version}-distribution.zip"
ec_download_url="https://download.jboss.org/wildfly/15.0.1.Final/wildfly-15.0.1.Final.tar.gz"
curl -u $dl_user:$dl_password ${ec_download_url} --output ec-app-install-distribution.zip
