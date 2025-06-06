#!/bin/bash

aptPackages=(
############################################################################################################################################
# name                          bin                                   desc
############################################################################################################################################
  sudo                        # sudo                                  Provide limited super user privileges to specific users
  lsb-release                 # lsb_release                           Linux Standard Base version reporting utility
  net-tools                   # ifconfig, netstat, ...                NET-3 networking toolkit
  telnet                      # telnet                                basic telnet client
  wget                        # wget                                  retrieves files from the web
  curl                        # curl                                  command line tool for transferring data with URL syntax
  make                        # make                                  utility for directing compilation
  git                         # git                                   fast, scalable, distributed revision control system
  git-extras                  # git-summary, git-line-summary, ...    Extra commands for git
  gcc                         # gcc                                   GNU C compiler
  g++                         # g++                                   GNU C++ compiler
  pkg-config                  # pkg-config                            manage compile and link flags for libraries
  unzip                       # unzip                                 De-archiver for .zip files
  rar                         # rar                                   Archiver for .rar files
  unrar                       # unrar                                 Unarchiver for .rar files (non-free version)
  tree                        # tree                                  displays an indented directory tree, in color

  fcitx5                      # fcitx5, fcitx5-configtool, ...        Next generation of Fcitx Input Method Framework
  fcitx5-chinese-addons       #                                       Chinese-related addon for fcitx5 (metapackage)
  im-config                   # im-config, im-launch                  Input method configuration framework

  nautilus                    # nautilus                              file manager and graphical shell for GNOME
  mercurial                   # hg                                    easy-to-use, scalable distributed version control system
  binutils                    # as, ar, ...                           GNU assembler, linker and binary utilities
  build-essential             #                                       Informational list of build-essential packages
  bison                       # bison                                 YACC-compatible parser generator
  apt-transport-https         #                                       https download transport for APT
  ca-certificates             # update-ca-certificates                Common CA certificates
  software-properties-common  # add-apt-repository                    manage the repositories that you install software from (common)
  gdebi                       # gdebi                                 simple tool to view and install deb files - GNOME GUI
  flatpak                     # flatpak                               Application deployment framework for desktop apps

  sysstat                     # sar, mpstat, iostat, pidstat, ...     system performance tools for Linux
  nmon                        # nmon                                  performance monitoring tool for Linux
  htop                        # htop                                  interactive processes viewer
  atop                        # atop, atopsar                         Monitor for system resources and process activity
  iotop                       # iotop                                 simple top-like I/O monitor
  iftop                       # iftop                                 displays bandwidth usage information on an network interface
  nvtop                       # nvtop                                 interactive GPU process viewer
  lm-sensors                  # sensors, sensors-detect               utilities to read temperature/voltage/fan sensors
  nethogs                     # nethogs                               Net top tool grouping bandwidth per process
  ethtool                     # ethtool                               display or change Ethernet device settings
  nicstat                     # nicstat                               print network traffic statistics
  dstat                       # dstat                                 versatile resource statistics tool
  vnstat                      # vnstat, vnstatd                       console-based network traffic monitor
  pstack                      # pstack                                Display stack trace of a running process
  strace                      # strace                                System call tracer
  colordiff                   # colordiff                             tool to colorize 'diff' output
  bwm-ng                      # bwm-ng                                small and simple console-based bandwidth monitor
  corkscrew                   # corkscrew                             tunnel TCP connections through HTTP proxies
  proxychains-ng              # proxychains4                          proxychains ng (new generation) - a preloader which hooks calls to sockets in dynamically linked programs and redirects it through one or more socks/http proxies
  tor                         # tor                                   anonymizing overlay network for TCP
  ncdu                        # ncdu                                  ncurses disk usage viewer

  python3-pip                 # pip3                                  alternative Python package installer - Python 3 version of the package
  pipenv                      # pipenv, pipenv-resolver, pewtwo       Python's officially recommended packaging tool
  tmux                        # tmux                                  terminal multiplexer
  zsh                         # zsh                                   shell with lots of features
  zssh                        # zssh, ztelnet                         interactive file transfers over ssh
  autojump                    # autojump                              shell extension to jump to frequently used directories
  ack                         # ack                                   grep-like program specifically for large source trees
  ripgrep                     # rg                                    Recursively searches directories for a regex pattern
  vim                         # vim                                   Vi IMproved - enhanced vi editor
  vim-gtk3                    # vim.gtk3                              Vi IMproved - enhanced vi editor - with GTK3 GUI
  exuberant-ctags             # ctags, ctags-exuberant                build tag file indexes of source code definitions
  ansible                     # ansible, ansible-playbook, ...        Configuration management, deployment, and task execution system
  xclip                       # xclip, xclip-copyfile, ...            command line interface to X selections

  i3                          # i3, i3lock, i3-dmenu-desktop, ...     metapackage (i3 window manager, screen locker, menu, statusbar)
  suckless-tools              # dmenu, slock, wmname, ...             simple commands for minimalistic window managers
  flameshot                   # flameshot                             Powerful yet simple-to-use screenshot software
  rofi                        # rofi, rofi-theme-selector             window switcher, run dialog and dmenu replacement

  mycli                       # mycli                                 CLI for MySQL/MariaDB
  mongodb-clients             # mongo                                 object/document-oriented database (client apps)
  mongo-tools                 # mongodump, mongoexport, mongotop, ... collection of tools for administering MongoDB servers
  redis-tools                 # redis-cli, redis-benchmark, ...       Persistent key-value database with network interface (client)

  usb-creator-gtk             # usb-creator-gtk                       create a startup disk using a CD or disc image (for GNOME)
  transmission                # transmission-gtk                      lightweight BitTorrent client
  mpv                         # mpv                                   video player based on MPlayer/mplayer2
  vlc                         # vlc                                   multimedia player and streamer
  libreoffice                 # writer, calc, impress, draw, ...      office productivity suite (metapackage)
  virtualbox                  # virtualbox, virtualbox-qt, ...        x86 virtualization solution - base binaries
  sqlitebrowser               # sqlitebrowser                         GUI editor for SQLite databases
  firefox                     # firefox                               Transitional package - firefox -> firefox snap

  v4l2loopback-dkms           #                                       Source for the v4l2loopback driver (DKMS)
  ffmpeg                      # ffmpeg, ffplay, ffprobe, ...          Tools for transcoding, streaming and playing of multimedia files
  obs-studio                  # obs                                   recorder and streamer for live video content
)

sudo apt update
for k in ${aptPackages[@]}; do sudo apt install -y $k; done
