The code example reflects the current state of most Spring Boot-based projects.

Code contains a REST controller 
`api-handling/src/main/java/no/maddin/apihandling/controller/TimeController.java`{{open}}. 

In this simple example it does not have any Swagger annotations.

Let's build and run the application the application
`mvn verify spring-boot:run`{{execute}}

See what we get `curl -s http://localhost:8080/now/utc | jq`{{execute T2}}

The contract is exposed on (/v3/api/docs): `curl -s http://localhost:8080/v3/api-docs | jq`{{execute T2}}

The Swagger UI is exposed on https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/swagger-ui.html

