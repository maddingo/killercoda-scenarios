The code example reflects the current state of most Spring Boot-based projects.

Code contains a REST controller 
`api-handling/src/main/java/no/maddin/apihandling/controller/TimeController.java`{{open}}. 

In this simple example it does not have any Swagger annotations.

Let's build and run the application
`mvn install -DskipTests && mvn spring-boot:run -pl step00 & `{{execute}}

Make sure it works: [REST endpoint]({{TRAFFIC_HOST1_8080}}/now/utc)

The contract is exposed on [/v3/api-docs]({{TRAFFIC_HOST1_8080}}/v3/api-docs)

The Swagger UI is exposed on [Swagger UI]({{TRAFFIC_HOST1_8080}}/swagger-ui.html)

Contract is not appended:
`ls ~/.m2/repository/no/maddin/api-handling/1.0.0-SNAPSHOT`{{execute}}