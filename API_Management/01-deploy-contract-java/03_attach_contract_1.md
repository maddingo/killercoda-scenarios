# Preparation
The code is prepared in module `step01`{{}}

# POM - Generate OAS in Test

Head back to the "Editor" tab and open the file `api-handling/step01/pom.xml`{{}}.

The project is configured with `build-helper-maven-plugin` that attaches a file `target/openapi.yaml`{{}} (line 68).

Where does this file come from?

It is generated in test `api-handling/step01/src/test/java/no/maddin/apihandling/step01/OpenApiControllerTest.java`{{}}.

Open the file and inspect it. You will find, that this test creates the openapi.yaml.

Build the project again `mvn clean install -pl step01`{{execute}}.

Now the contract is attached to the artifact. Inspect the local Maven repository:

`ls -1 ~/.m2/repository/no/maddin/api-handling/step01/1.0.0-SNAPSHOT/`{{execute}}

Notice the file `step01-1.0.0-SNAPSHOT-openapi.yaml`{{}}.

