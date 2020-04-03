#!/usr/bin/env bash
#Database 생성
cf create-service p.mysql db-small mysql-server

# registry-server 서비스 생성
cf create-service p.service-registry standard registry-server

# gateway-server 서비스 생성
cf create-service p.gateway standard gateway-server

# config-server 서비스 생성
cf create-service -c '{ "git": { "uri": "https://github.com/mz-swmoon/p-configs.git", "label": "master"  } }' p.config-server standard config-server

# Mysql서비스가 완료되었을 경우 2_deploy_app.sh를 실행하세요~
