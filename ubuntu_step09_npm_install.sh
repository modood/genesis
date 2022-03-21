#!/bin/bash

nodeModules=(
################################################################################
# name                          desc
################################################################################
  http-server                 # a command-line http server
  cleaver                     # 30-second Slideshows for Hackers
  whistle                     # HTTP, HTTP2, HTTPS, Websocket debugging proxy
)

for k in ${nodeModules[@]}; do npm install -g $k; done
