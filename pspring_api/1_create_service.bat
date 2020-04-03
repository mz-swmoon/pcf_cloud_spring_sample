cf create-service p.mysql db-small mysql-server
cf create-service p.service-registry standard registry-server
cf create-service p.gateway standard gateway-server
cf create-service -c "{ \"git\": { \"uri\": \"https://github.com/mz-swmoon/p-configs.git\", \"label\": \"master\"  } }" p.config-server standard config-server

