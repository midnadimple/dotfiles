#!/bin/sh

sudo pacman -S rustup
rustup default stable

which paru || (git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si) 
paru -Syu helix kitty qt6ct nwg-look-bin pamixer pavucontrol wlogout bashtop \
  xdg-desktop-portal-hyprland-git polkit-kde-agent qt6-wayland ttf-dejavu ttf-dejavu-nerd \
  hyprland hybrid-bar wofi hyprpaper grim slurp cliphist udiskie swaylock swayidle libappindicator-gtk3 \
  webcord-git-screenshare librewolf-bin steam wine gamescope wl-clipboard fzf zoxide joshuto sxiv

sudo usermod -aG seat $USER
sudo echo $USER >> /etc/shutdown.allow
sudo update-mime-database /usr/share/mime
sudo update-desktop-database
nmtui