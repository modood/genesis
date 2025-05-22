#!/bin/bash

aptRepositories=(
  ppa:graphics-drivers/ppa # nvidia-graphics-drivers
  ppa:git-core/ppa # git
  ppa:ansible/ansible # ansible
  ppa:flatpak/stable # flatpak
  ppa:obsproject/obs-studio # obs-studio
  ppa:ubuntuhandbook1/mpv # mpv
  ppa:ubuntuhandbook1/vlc # vlc
  ppa:mozillateam/ppa #firefox
)
for ((i = 0; i < ${#aptRepositories[@]}; i++));
do
  echo "Adding apt repository: ${aptRepositories[$i]}"
  sudo add-apt-repository -y "${aptRepositories[$i]}"
done

echo "Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 501" | \
  sudo tee /etc/apt/preferences.d/mozillateamppa > /dev/null

