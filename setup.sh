 #!/usr/bin/env bash
 
 pacman -Syy
 pacman -S yaourt ntp cronie
 
 #installation des greffons
 pacman -S gst-plugins-base gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-libav
 
 #installation xorg  + pilote intel + touchpad
 pacman -S xorg-server xorg-xinit xorg-xmessage xorg-utils xorg-server-utils xorg-apps xf86-input-mouse xf86-input-keyboard xdg-user-dirs xf86-input-synaptics xf86-video-intel
 
 #installation des polices 
 pacman -S ttf-bitstream-vera ttf-liberation ttf-freefont ttf-dejavu
 
 #installation de gimp
 pacman -S cups gimp gimp-help-fr webkitgtk2 hplip
 
 #installation libreoffice 5
 pacman -S libreoffice-still-fr
 
 #installation firefox
 pacman -S firefox-i18n-fr
 
 #installation de gnome 
 pacman -S gnome gnome-extra system-config-printer telepathy shotwell rhythmbox
 
 #changement du clavier au démarrage
 sudo localectl set-x11-keymap fr
 
 #script de démarrage
systemctl enable syslog-ng 
systemctl enable cronie 
systemctl enable avahi-daemon 
systemctl enable avahi-dnsconfd 
systemctl enable org.cups.cupsd
systemctl enable ntpd
systemctl enable gdm