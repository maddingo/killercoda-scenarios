To prepare for this session, run the API manager
`docker run --name apimgr -d wso2/wso2am:3.2.0`{{execute}}
`docker cp apimgr:/home/wso2carbon/wso2am-3.2.0/repository/conf/deployment.toml .`{{execute}}
`sed -i 's/hostname = "localhost"/hostname = "[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com"/' deployment.toml`{{execute}}
`docker kill apimgr && docker rm apimgr`{{execute}}
`docker run --name apimgr -p 9443:9443 -v $(pwd)/deployment.toml:/home/wso2carbon/wso2am-3.2.0/repository/conf/deployment.toml -d wso2/wso2am:3.2.0`{{execute}}


Open API Manager in 
https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/publisher

Management Console in 
https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/carbon
