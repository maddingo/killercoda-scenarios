# Preparation
The code is prepared in branch `02_2_attach_openapi`
`git reset --hard && git switch 02_2_attach_openapi`{{execute T1 interrupt}}

# POM

The `api-handling/pom.xml`{{open}} is configured to 
- start the application (line 72) and
- attach the artifact (line 96)
- and stop the application (line 78).

There is no `OpenApiGeneratorTest.java`.

We build the project again `mvn clean install`{{execute T1}}.

Now the contract is attached to the artifact:\
`ls ~/.m2/repository/no/maddin/api-handling/1.2.2-SNAPSHOT`{{execute T1}}