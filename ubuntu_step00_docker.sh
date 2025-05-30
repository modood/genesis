#!/bin/bash

(command -v docker >/dev/null 2>&1) || {
  # Add Docker's official GPG key:
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
  sudo chmod a+r /etc/apt/keyrings/docker.asc

  # Add the repository to Apt sources:
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://mirrors.aliyun.com/docker-ce/linux/ubuntu $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

  # Add user account to the docker group
  sudo usermod -aG docker $(whoami)

  # set mirror
  sudo mkdir -p /etc/docker
  echo '{"registry-mirrors": ["https://docker.1ms.run","https://docker.xuanyuan.me"]}' | sudo tee /etc/docker/daemon.json > /dev/null
  sudo systemctl daemon-reload
  sudo systemctl restart docker
}

