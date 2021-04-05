## Preparation
To prepare for the session, clone the example repository starting in branch `01_current_state`

`git clone -b 01_current_state https://github.com/maddingo/api-handling.git`{{execute}}

Change to the example code directory:
`cd api-handling`{{execute}}

We are running JDK 11 on Maven 3.6 `mvn -version`{{execute}}

## Current state
The code example reflects the current state of most Spring Boot-based projects.

Code contains a REST controller <pre class="file" data-filename="src/main/java/no/maddin/apihandling/controller/TimeController.java" data-target="prepend"></pre>

`src/main/java/no/maddin/apihandling/controller/TimeController.java`{{open}}. 
In this simple example it does not have any Swagger annotations.

Let's build and run the application the application
`mvn verify spring-boot:run`{{execute}}

