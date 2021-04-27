The scenario shows how to test the simple Java client.

What we need:
1. the server application, a jar file
2. some way of starting the application
3. run the client agains the running server
4. validate the test results
5. stop the server

In this example, everything is done in the junit test 
`api-handling/src/test/java/no/maddin/apiclient/TimeClientTest.java`{{open}}

The test:
- starts a new java process (line 37)\
  receives the application JAR from a system property (line 43)
- runs the junit test `clientTest` (line 65)
- verifies the result (line 72)
- and stops the java process (line 60)

The jar file is supplied by Maven.
`api-handling/pom.xml`{{open}}

through the system property `spring.jar` (line 157). 

The property is created by the dependency plugin's `properties` goal (line 137).