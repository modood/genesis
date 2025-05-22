#!/bin/bash

# https://github.com/creationix/nvm
if [ ! -d $HOME/.nvm ]; then
  echo -e "\nInstalling nvm..."
  curl -L https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

  nvm install 22
  nvm use 22
  nvm alias default 22
fi

