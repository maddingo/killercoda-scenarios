# First we set up our environment!

The image we are using might be missing important updates.

`apt update && apt upgrade -y && apt install zip`{{execute}}

# Installation of tools
We use [sdkman](https://sdkman.io), since Ubuntu has outdated versions in their package repository.

`curl -s "https://get.sdkman.io" | bash`{{execute}}

and 
activeate the tool for the current shell

`source "$HOME/.sdkman/bin/sdkman-init.sh"`{{execute}}

Check that SDKman is properly installed

`sdk version`{{execute}}

Now lets install java 21: 

`sdk install java`{{execute}} 

and Maven 

`sdk install maven`{{execute}}

Check that it was properly installed:

`mvn --version`{{execute}}

Fianlly, get teh sample code for this scenario

``git clone https://github.com/maddingo/api-handling.git`{{execute}}