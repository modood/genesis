#!/bin/bash

aptCache=/var/cache/apt/archives
debPackages=(
  https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  https://github.com/bvaisvil/zenith/releases/download/0.12.0/zenith_0.12.0-1_amd64.deb
  https://github.com/reqable/reqable-app/releases/download/2.28.0/reqable-app-linux-x86_64.deb
)
for i in ${debPackages[@]};
do
  filename=$aptCache/$(basename $i)
  if [ ! -f $filename ]; then
    echo -e "\nInstalling $i"
    sudo curl -L -o$filename $i
    sudo gdebi -n $filename
  fi
done

