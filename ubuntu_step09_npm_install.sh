#!/bin/bash

nodeModules=(
################################################################################
# name                          desc
################################################################################
  pnpm                        # Fast, disk space efficient package manager
  http-server                 # a command-line http server
  cleaver                     # 30-second Slideshows for Hackers
  whistle                     # HTTP, HTTP2, HTTPS, Websocket debugging proxy
  whistle.modify              # 一个用于修改响应的 whistle 插件。
)

for k in ${nodeModules[@]}; do npm install -g $k; done
