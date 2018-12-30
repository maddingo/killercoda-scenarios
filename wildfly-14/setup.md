We want to install Energy Components 12.1.0. This requires OpenJDK 11.

## Check the Java version
Wait until you get a prompt.

`java -version`{{execute}}

## Download the distribution.

Type the username, password and download host.
`read -p "Download Username: " dl_user && read -s -p "Download Password: " dl_password && read -p "Download Host:     " dl_host`{{execute}}

Download the distribution.
`curl -u $dl_user:$dl_password https://${dl_host}/repository/maven-mirror/com/ec/frmw/ec-app-install/ec-app-install-12.1.0-distribution.zip`{{execute}}
