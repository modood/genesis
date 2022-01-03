#!/bin/bash

nodeModules=(
####################################################################################################
# name                                                     desc
####################################################################################################
  rsc.io/2fa                                             # 2fa is a two-factor authentication agent
  github.com/mfridman/tparse                             # parses go test output
  github.com/maruel/panicparse/cmd/pp                    # parses panic stack traces
  github.com/itchyny/bed/cmd/bed                         # binary editor
  github.com/jingweno/ccat                               # colorizing cat
  github.com/wagoodman/dive                              # exploring each layer in a docker image
  github.com/howeyc/ledger/cmd/ledger                    # Command line double-entry accounting program
  github.com/howeyc/ledger/cmd/lweb                      # Command line double-entry accounting program
  github.com/modood/btckeygen                            # A very simple and easy to use bitcoin(btc) key/wallet generator
  github.com/modood/xmrkeygen                            # A very simple and easy to use monero(xmr) key/wallet generator
  github.com/btcsuite/btcd/cmd/btcctl                    # command line utility that can be used to both control and query btcd via RPC
  github.com/swaggo/swag/cmd/swag                        # Automatically generate RESTful API documentation with Swagger 2.0 for Go.
)

for k in ${nodeModules[@]}; do go get -v $k; done
