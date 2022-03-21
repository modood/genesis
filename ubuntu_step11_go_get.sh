#!/bin/bash

nodeModules=(
####################################################################################################
# name                                                     desc
####################################################################################################
  rsc.io/2fa@latest                                      # 2fa is a two-factor authentication agent
  github.com/mfridman/tparse@latest                      # parses go test output
  github.com/itchyny/bed/cmd/bed@latest                  # binary editor
  github.com/wagoodman/dive@latest                       # exploring each layer in a docker image
  github.com/howeyc/ledger/ledger@latest                 # Command line double-entry accounting program
  github.com/modood/btckeygen@latest                     # A very simple and easy to use bitcoin(btc) key/wallet generator
  github.com/modood/xmrkeygen@latest                     # A very simple and easy to use monero(xmr) key/wallet generator
 #github.com/btcsuite/btcd/cmd/btcctl@latest             # command line utility that can be used to both control and query btcd via RPC
  github.com/swaggo/swag/cmd/swag@latest                 # Automatically generate RESTful API documentation with Swagger 2.0 for Go.
 #google.golang.org/protobuf/cmd/protoc-gen-go@v1.27.1   # The protoc-gen-go binary is a protoc plugin to generate Go code for both proto2 and proto3 versions of the protocol buffer language
 #google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2.0   # This tool generates Go language bindings of services in protobuf definition files for gRPC
)

for k in ${nodeModules[@]}; do go install -v $k; done

curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.45.0
golangci-lint --version
