# Code-First approach

The code example contains a simpleSpring Boot applicaton with a REST controller.

Open the file `api-handling/step00/src/main/java/no/maddin/apihandling/controller/TimeController.java`{{}} in
the Editor tab.

Let's build and run the application

```
source ~/.sdkman/bin/sdkman-init.sh # in case the shell you are using is not initialized
cd api-handling
mvn install -DskipTests -pl step00 -am
mvn spring-boot:start -pl step00
```{{execute}}

Make sure it works: [REST endpoint]({{TRAFFIC_HOST1_8080}}/now/utc)

`curl -s http://localhost:8080/now/utc | jq`{{execute}}

The Open API Specification, aka the contract, is exposed on [/v3/api-docs]({{TRAFFIC_HOST1_8080}}/v3/api-docs).

`curl -s http://localhost:8080/v3/api-docs | jq `{{execute}}

There is also a fancy UI for the contract on [Swagger UI]({{TRAFFIC_HOST1_8080}}/swagger-ui.html).

At this stage, the contract is not deployed to the Maven repository, thus other project cannot use the OAS from this project.

Check the content of the local repository to see what artifacts are available:

`ls -1 ~/.m2/repository/no/maddin/api-handling/step00/1.0.0-SNAPSHOT/`{{execute}}

You will notice that there is a jar file with the application, a POM and some metadata files.

You can inspect the jar file with `jar tf ~/.m2/repository/no/maddin/api-handling/step00/1.0.0-SNAPSHOT/step00-1.0.0-SNAPSHOT.jar`{{execute}}

Before we continue to the next step, lets stop the running server with

`mvn spring-boot:stop -pl step00`{{execute}}
