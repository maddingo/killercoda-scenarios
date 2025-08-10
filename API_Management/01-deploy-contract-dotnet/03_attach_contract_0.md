Attaching the contract involves retrieving the Open API Spec (OAS) from the running server during the Maven build cycle and attaching it to the artifact, so that it can be installed as a project artifact and used by other projects.

In this scenario we look at two alternatives:
1. With SpringTest and build helper
  - More flexible but slightly more complex to set up
  - depends on test phase running
2. With springdoc plugin
  - Easy to set up, 
  - but uses hard-coded port (there are ways get around this), which is impractical on a build server with potially multiple runs in parallel.
