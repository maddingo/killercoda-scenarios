We use a prepared configuration file `deployment.toml`{{open}}

This file can be obtained from the container: 
`docker run --rm --name apimgr_temp -d wso2/wso2am:3.2.0`
`docker cp apimgr_temp:/home/wso2carbon/wso2am-3.2.0/repository/conf/deployment.toml .`


Set the external hostname in the configuration:
`sed -i 's#XX_HOSTNAME_XX#[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com#g' deployment.toml`{{execute}}

Set the external IP address:
`sed -i "s#XX_NODE_IP_XX#$(dig [[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com +short)#g" deployment.toml`{{execute}}

Set the base path:
`sed -i "s#XX_BASE_PATH_XX#https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com#g" deployment.toml`{{execute}}

Set the IdP path:
`sed -i "s#XX_IDP_SERVER_URL_XX#https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com#g" deployment.toml`{{execute}}

Set Services URL:
`sed -i "s#XX_KM_SERVICES_URL_XX#https://[[HOST_SUBDOMAIN]]-8243-[[KATACODA_HOST]].environments.katacoda.com/services#g" deployment.toml`{{execute}}

Set the Devportal path:
`sed -i "s#XX_DEVPORTAL_URL_XX#https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/devportal#g" deployment.toml`{{execute}}

Start the configured API Manager:

`docker run --name apimgr -p 8243:8243 -p 8280:8280 -p 9443:9443 -v $(pwd)/deployment.toml:/home/wso2carbon/wso2am-3.2.0/repository/conf/deployment.toml -d wso2/wso2am:3.2.0`{{execute}}

Monitor the progress of the API Manager start:
`docker logs -f apimgr`{{execute}}

Open API Manager in 
https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/publisher

Management Console in 
https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/carbon

Developer Portal: 
[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/devportal
