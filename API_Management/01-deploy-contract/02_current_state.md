# Code-First approach

The code example reflects the current state of most Spring Boot-based projects.

Open the Editor tab and open the file `api-handling/step00/src/main/java/no/maddin/apihandling/controller/TimeController.java`

The code contains a simple REST controller 

In this simple example it does not have any Swagger annotations.

Let's build and run the application
```
source ~/.sdkman/bin/sdkman-init.sh # in case the shell you are using is not initialized
cd api-handling
mvn install -DskipTests -pl step00 -am && mvn spring-boot:start -pl step00
```{{execute}}

Make sure it works: [REST endpoint]({{TRAFFIC_HOST1_8080}}/now/utc)

`curl http://localhost:8080/now/utc | jq`{{execute}}

The Open API Specification, aka the contract, is exposed on [/v3/api-docs]({{TRAFFIC_HOST1_8080}}/v3/api-docs).

`curl http://localhost:8080/v3/api-docs | jq `{{execute}}

There is also a fancy UI for the contract on [Swagger UI]({{TRAFFIC_HOST1_8080}}/swagger-ui.html). Execution is not working in this sandbox environment due to CORS settings.

At this stage, the contract is not deployed to the Maven repository, making it thereby unavailable to other projects.

`ls ~/.m2/repository/no/maddin/api-handling/1.0.0-SNAPSHOT`{{execute}}