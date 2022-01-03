#!/bin/bash

if [[ `tmux -V` != "tmux 3.2" ]]; then
  curl -L https://github.com/tmux/tmux/releases/download/3.2/tmux-3.2.tar.gz -o tmux-3.2.tar.gz
  tar -zxvf tmux-3.2.tar.gz
  cd tmux-3.2
  sudo apt install -y libevent-dev ncurses-dev
  sudo ./configure
  sudo make
  sudo make install
  cd .. && sudo rm -rf tmux-3.2 tmux-3.2.tar.gz
fi

