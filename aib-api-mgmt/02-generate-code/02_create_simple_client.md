In this step we are going to create a simple Java client the accesses the server we just built.

`git switch 03_depend_on_contract`{{execute}}

Now lets have a look at the application:

`api-handling/src/main/java/no/maddin/apiclient/TimeClient.java`{{open}}

Notice that neither the `TimeController` nor `ApiException` class exist in the source or any library.

Where do they come from?

They are generated during the Maven build. The Maven build generates the sources, compiles them and adds them to the resulting application.

Lets do it step by step.
# Generate the sources
`mvn clean generate-sources`{{execute}}

A new file is created `api-handling/target/generated-sources/openapi/src/main/java/org/openapitools//client/api/TimeControllerApi.java`{{open}}

# Build the application
We skip the test for now.

`mvn clean package -DskipTests`{{execute}}

# The content of the application
The jar file contains far more classes than we have in our source code.

`jar tf target/api-handling-client-1.3.0-SNAPSHOT.jar`{{execute}}

All classes in the package `org.openapitools.client` are generated from the OAS.