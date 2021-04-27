# Preparation

Switch to the branch with the example code:

`git switch 04_spring_client`{{execute}}

# Change the POM

From the client generator list at [https://openapi-generator.tech/docs/generators](https://openapi-generator.tech/docs/generators) we
keep the `java` generator and change the library to `webclient`.

`git --no-pager diff 03_depend_on_contract -- pom.xml`{{execute}}

Some more files are generated. The client looks almost the same.
`git --no-pager diff 03_depend_on_contract -- src/main/java/no/maddin/apiclient/TimeClient.java`{{execute}}

The `TimeControllerApi` is customizable the Spring-way.

`aip-handling/target/generated-sources/openapi/src/main/java/org/openapitools/client/api/TimeControllerApi.java`{{open}}

The test is also almost the same.
`git --no-pager diff 03_depend_on_contract -- src/test/java/no/maddin/apiclient/TimeClientTest.java`{{execute}}