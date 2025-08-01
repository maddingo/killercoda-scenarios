Attaching the contract involves retrieving the openapi spec from the running server during the Maven build cycle and attaching it to the artifact.

There are two alternatives:
1. With SpringTest and build helper
  - More flexible but slightly more complex to set up
  - depends on test phase running
3. With springdoc plugin
  - Easy to set up, 
  - but uses hard-coded port (there are ways get around this)
