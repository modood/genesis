#!/bin/bash

nodeModules=(
####################################################################################################
# name                                                     desc
####################################################################################################
  github.com/itchyny/bed/cmd/bed@latest                  # binary editor
  github.com/wagoodman/dive@latest                       # exploring each layer in a docker image
  github.com/howeyc/ledger/ledger@latest                 # Command line double-entry accounting program
  github.com/swaggo/swag/cmd/swag@latest                 # Automatically generate RESTful API documentation with Swagger 2.0 for Go.
 #google.golang.org/protobuf/cmd/protoc-gen-go@v1.27.1   # The protoc-gen-go binary is a protoc plugin to generate Go code for both proto2 and proto3 versions of the protocol buffer language
 #google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2.0   # This tool generates Go language bindings of services in protobuf definition files for gRPC
  github.com/modood/mfa@latest                           # Generate TOTP(Time-based One-time Password) token on the command line
  github.com/muesli/duf@latest                           # Disk Usage/Free Utility - a better 'df' alternative
  github.com/stern/stern@latest                          # Multi pod and container log tailing for Kubernetes
  github.com/davecheney/httpstat@latest                  # It's like curl -v, with colours.
)

for k in ${nodeModules[@]}; do go install -v $k; done

