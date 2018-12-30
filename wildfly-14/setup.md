We want to install Energy Components 12.1.0. This requires OpenJDK 11.

## Check the Java version
Wait until you get a prompt.

`java -version`{{execute}}

## Download the distribution.

Type the username and password
`read -p "Download Username: " dl_user`{{execute}}
`read -p "Download Password: " dl_password`{{execute}}
`read -p "Download Host:     " dl_host`{{execute}}

`curl -u $dl_user:$dl_password https://${dl_host}/repository/maven-mirror/com/ec/frmw/ec-app-install/ec-app-install-12.1.0-distribution.zip`{{execute}}
