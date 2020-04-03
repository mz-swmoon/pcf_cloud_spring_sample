cf push -f manifest_ui.yml --no-start

cf bind-service pspring_ui config-server
cf bind-service pspring_ui registry-server

cf start pspring_ui
