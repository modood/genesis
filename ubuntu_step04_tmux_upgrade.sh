#!/bin/bash

if [[ `tmux -V` != "tmux 3.5a" ]]; then
  curl -L https://github.com/tmux/tmux/releases/download/3.5a/tmux-3.5a.tar.gz -o tmux-3.5a.tar.gz
  tar -zxvf tmux-3.5a.tar.gz
  cd tmux-3.5a
  sudo apt install -y libevent-dev ncurses-dev
  sudo ./configure
  sudo make
  sudo make install
  cd .. && sudo rm -rf tmux-3.5a tmux-3.5a.tar.gz
fi

