To prepare for this session, run the API manager
`docker run --rm --name apimgr_temp -d wso2/wso2am:3.2.0`{{execute}}

Extract to current deployment.toml from the container:
`docker cp apimgr:/home/wso2carbon/wso2am-3.2.0/repository/conf/deployment.toml .`{{execute}}

Set the external hostname in the configuration:
`sed -i 's/hostname = "localhost"/hostname = "[[HOST_SUBDOMAIN]]-8243-[[KATACODA_HOST]].environments.katacoda.com"/' deployment.toml`{{execute}}

Set the external IP address:
`sed -i "s/node_ip = \"127.0.0.1\"/node_ip = \"$(dig [[HOST_SUBDOMAIN]]-8243-[[KATACODA_HOST]].environments.katacoda.com +short)\"/" deployment.toml`{{execute}}

Kill the temporary api manager:
`docker kill apimgr_temp`{{execute}}

Start the configured API Manager_

`docker run --name apimgr -p 8243:8243 -p 8280:8280 -v $(pwd)/deployment.toml:/home/wso2carbon/wso2am-3.2.0/repository/conf/deployment.toml -d wso2/wso2am:3.2.0`{{execute}}

Monitor the progress of the API Manager start:
`docker logs -f apimgr`{{execute}}

Open API Manager in 
https://[[HOST_SUBDOMAIN]]-8243-[[KATACODA_HOST]].environments.katacoda.com/publisher

Management Console in 
https://[[HOST_SUBDOMAIN]]-8243-[[KATACODA_HOST]].environments.katacoda.com/carbon

Developer Portal: 
[[HOST_SUBDOMAIN]]-8243-[[KATACODA_HOST]].environments.katacoda.com/devportal
