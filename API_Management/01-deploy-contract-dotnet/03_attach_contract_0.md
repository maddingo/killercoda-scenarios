Creating the Open API Specification (OAS) file involves modifying the project file `step01.csproj`{{}}.

`diff ~/api-handling/step0{0,1}/step*.csproj`{{execute}}

```
cd ~/api-handling/step01
dotnet build
```{{execute}}

After that, the OAS file is located in ~/api-handling/step01/swagger.json.

`cat ~/api-handling/step01/swagger.json | jq`{{execute}}

This file can then be uploded to a repository, to make it accessible to other projects.