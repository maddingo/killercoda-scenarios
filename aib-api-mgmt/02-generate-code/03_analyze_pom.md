Now lets disect the POM.

`api-handling/pom.xml`{{open}}

# Copy Dependency (pom.xml:129)

* Download with `maven-dependency-plugin` goal `copy-dependency`
* bound to the phase `generate-sources`
* all dependencies with classifier openapi
* strip version to avoid updating the version information
* (son't worry about the proerties goal yet)

Lets see it in action:
`mvn clean generate-sources`{{execute}}

The OAS file is copied to `api-handling/target/dependency/api-handling-openapi.yaml`{{open}}

# Use the OAS to generate a client (pom.xml:168)

* generator: `java`
* library: `native`, i.e. no spring, just plan Java and Jackson

The plugin create a lot of files. Try it by removing all config options after `inputSpec` and run
`mvn clean compile`{{execute}}

If you want to play with the configuration parameters, have a look at the Documentation:
* [Api Generator HowTo](https://github.com/OpenAPITools/openapi-generator/wiki/API-client-generator-HOWTO)
* [OpenAPI Generator Web site](https://openap-generator.tech)
* [The documentation for the Maven plugin](https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator-maven-plugin)
* The Maven plugin help: `mvn help:describe -Dplugin=org.openapitools:openapi-generator-maven-plugin -Ddetail`{{execute}}
* Config help: `mvn compile -Dcodegen.configHelp`{{execute}}
