#!/usr/bin/env bash

export FRONTEND_URL="http://$(oc get routes | grep "frontend" | tr -s ' ' ' ' | cut -d ' ' -f2)"
export BACKEND_URL="http://$(oc get routes | grep "backend" | tr -s ' ' ' ' | cut -d ' ' -f2)"

yq -i -y \
--arg FRONTEND_URL "${FRONTEND_URL}" \
--arg BACKEND_URL "${BACKEND_URL}" '
  .app.baseUrl = $FRONTEND_URL |
  .app.listen.port = 3000 |
  .app.listen.host = "0.0.0.0" |
  .backend.baseUrl = $BACKEND_URL |
  .backend.listen.port = 7007 |
  .backend.listen.host = "0.0.0.0" |
  .backend.cors.origin = false |
  .proxy."/".target = $FRONTEND_URL
' backstage/app-config.yaml