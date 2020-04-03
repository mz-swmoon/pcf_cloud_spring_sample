cf push -f manifest_api.yml --no-start
cf bind-service pspring_api mysql-server
cf bind-service pspring_api gateway-server -c "{\"routes\": [{\"path\": \"/api/**\"}]}"
cf bind-service pspring_api config-server
cf bind-service pspring_api registry-server


