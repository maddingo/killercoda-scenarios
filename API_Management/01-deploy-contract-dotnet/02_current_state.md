# Code-First approach

The code example contains a .NET application with a REST controller.

Open the file `api-handling/step00/Controllers/TimeController.cs`{{}} in
the Editor tab.

Let's build and run the application

```
cd api-handling/step00
dotnet build
ASPNETCORE_URLS=http://localhost:8080 ASPNETCORE_ENVIRONMENT=Development bin/Debug/net8.0/step00 
```{{execute}}

Make sure it works: [REST endpoint]({{TRAFFIC_HOST1_8080}}/Time/now/utc)

`curl -s http://localhost:8080/Time/now/utc | jq`{{execute}}

The Open API Specification, aka the contract, is exposed on [/v3/api-docs]({{TRAFFIC_HOST1_8080}}/v3/api-docs).

`curl -s http://localhost:8080/swagger/v1/swagger.json | jq `{{execute}}

There is also a fancy UI for the contract on [Swagger UI]({{TRAFFIC_HOST1_8080}}/swagger/index.html).

At this stage, the contract is not generated as a json file.

Check the content of the `bin`{{}} directory.

`ls -1 bin/Debug/net8.0/step00`{{execute}}

Stop the running appliction with `Ctrl+C`{{}}

