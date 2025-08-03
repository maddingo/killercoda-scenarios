# Installation of tools
We use [sdkman](https://sdkman.io), since Ubuntu has outdated versions in their package repository.

`curl -s "https://get.sdkman.io" | bash`{{execute}}

and activate the tool for the current shell

`source "$HOME/.sdkman/bin/sdkman-init.sh"`{{execute}}

Check that SDKman is properly installed

`sdk version`{{execute}}

Now lets install the latest LTS JDK:

`sdk install java`{{execute}} 

and Maven 

`sdk install maven`{{execute}}

Check that it was properly installed:

`mvn --version`{{execute}}

Fianlly, get teh sample code for this scenario

`git clone https://github.com/maddingo/api-handling.git`{{execute}}
