# Preparation
The code is prepared in module `step02`{{}}.

# POM - Generate OAS with Spring Boot Doc

This code is similar to the one in step01, but requires more configuration to make it work. 

1. Spring needs to be started on a random port, 
2. the random port has to be pre-allocated in Maven, 
3. The port has to be passed to the SpringDoc Maven plugin.

Yes, a lot of Maven configuration. Check out the POM in `api-handling/step02/pom.xml`.

Build the project:

`mvn clean install -pl step02`{{execute}}

In both step01 and step02, the contract is generated:

`find ~/.m2/repository -name '*-openapi.yaml'`{{execute}}

The OAS files should be the same, except for the server URL.

`find ~/.m2/repository -name '*-openapi.yaml' | xargs diff`{{execute}}

These artifacts can now be resolved as a Maven dependency like any other maven dependency.

`mvn dependency:get -DgroupId=no.maddin.api-handling -DartifactId=step01 -Dversion=1.0.0-SNAPSHOT -Dpackaging=yaml -Dclassifier=openapi`{{execute}}

And copied to your local path

`mvn dependency:copy -Dartifact=no.maddin.api-handling:step01:1.0.0-SNAPSHOT:yaml:openapi -DoutputDirectory=out/ -Dmdep.stripVersion=true`{{execute}}

The copied OAS is now available in the `out/`{{}} directory.

Check the content with `cat $(pwd)/out/step01-openapi.yaml | yq`{{execute}}
