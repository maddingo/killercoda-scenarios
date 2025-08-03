# Preparation
The code is prepared in module `step02`{{}}.

# POM - Generate OAS with Spring Boot Doc

This code is similar to the one in step01, but requires more configuration to make it work. 

1. Spring needs to be started on a random port, 
2. the random port has to be pre-allocated in Maven, 
3. THe port has to be passed to the SpringDoc Maven plugin.

In both step01 and step02, the contract is generated:

```
ls ~/.m2/repository/no/maddin/api-handling/step01/1.0.0-SNAPSHOT
ls ~/.m2/repository/no/maddin/api-handling/step02/1.0.0-SNAPSHOT
```{{execute}}

The OAS files should be the same, except for the server URL.

`diff ~/.m2/repository/no/maddin/api-handling/step01/1.0.0-SNAPSHOT/step01-1.0.0-SNAPSHOT-openapi.yaml ~/.m2/repository/no/maddin/api-handling/step02/1.0.0-SNAPSHOT/step02-1.0.0-SNAPSHOT-openapi.yam

