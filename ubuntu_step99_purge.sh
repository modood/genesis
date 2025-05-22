#!/bin/bash

aptPackages=(
  xul-ext-ubufox                                # Ubuntu modifications for Firefox
  snapd                                         # Daemon and tooling that enable snap packages
  thunderbird                                   # Transitional package - thunderbird -> thunderbird snap
  totem                                         # Simple media player for the GNOME desktop based on GStreamer
  rhythmbox                                     # music player and organizer for GNOME
  brasero                                       # CD/DVD burning application for GNOME
  simple-scan                                   # Simple Scanning Utility
  gnome-mahjongg                                # classic Eastern tile game for GNOME
  aisleriot                                     # GNOME solitaire card game collection
  gnome-mines                                   # popular minesweeper puzzle game for GNOME
  cheese                                        # tool to take pictures and videos from your webcam
  gnome-sudoku                                  # Sudoku puzzle game for GNOME
  onboard                                       # Simple On-screen Keyboard
  deja-dup                                      # Backup utility
)

for k in ${aptPackages[@]}; do sudo apt purge -y $k; done
sudo apt purge `dpkg --get-selections | grep firefox | awk '{print $1}'`
sudo apt purge `dpkg --get-selections | grep libreoffice | awk '{print $1}'`

sudo apt autoremove -y

