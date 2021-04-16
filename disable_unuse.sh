sudo apt install omxplayer -y
sudo bash -c 'echo "gpu_mem=256" >> /boot/config.txt'
sudo bash -c 'echo "disable_splash=1" >> /boot/config.txt'
sudo bash -c 'echo "dtoverlay=pi3-disable-bt" >> /boot/config.txt'
sudo bash -c 'echo "dtoverlay=pi3-disable-wifi" >> /boot/config.txt'
sudo bash -c 'echo "dtoverlay=sdtweak,overclock_50=100" >> /boot/config.txt'
sudo bash -c 'echo "boot_delay=0" >> /boot/config.txt'
sudo bash -c 'echo "avoid_warnings=1" >> /boot/config.txt'
sudo systemctl disable dhcpcd.service
sudo systemctl disable networking.service
sudo systemctl disable ssh.service
sudo systemctl disable ntp.service
sudo systemctl disable dphys-swapfile.service
sudo systemctl disable keyboard-setup.service
sudo systemctl disable apt-daily.service
sudo systemctl disable wifi-country.service
sudo systemctl disable hciuart.service
sudo systemctl disable raspi-config.service
sudo systemctl disable avahi-daemon.service
sudo systemctl disable triggerhappy.service
sudo apt-get purge --remove plymouth
sudo sed -i '/^exit 0.*/i omxplayer --orientation 90 /home/pi/video/logo.mp4' /etc/rc.local
sudo sed -i '/^exit 0.*/i omxplayer --orientation 90 --loop /home/pi/video/loop.mp4' /etc/rc.local
sudo reboot
#then add quiet before rootwait in /boot/cmdline.txt
#then add logo.nologo
#then add loglevel=3
#sudo chmod +x video/disable_unuse.sh && ./disable_unuse.sh 
