Creating the Open API Specification (OAS) file involves modifying the project file `step01.csproj`{{}}.

`diff ~/api-handling/step0{0,1}/step*.csproj`{{execute}}

```
cd ~/api-handling/step01
dotnet build
```{{execute}}

After that, the OAS file is located in `~/api-handling/step01/swagger/swagger.json.`{{}}

`cat ~/api-handling/step01/swagger/swagger.json | jq`{{execute}}

If you wish to convert the json file to a yaml version of the OAS, run the following command

`(cd ~/api-handling/step01/swagger ; yq -P -o yaml . swagger.json > swagger.yaml)`{{execute}}

This file can then be uploded to a repository, to make it accessible to other projects.