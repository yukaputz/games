http://192.168.1.10:3000/yukaputz/wargames.git

# Docker Compose (wireless)
docker compose -f /home/yukaputz/stashes/wargames/kali/compose.yml build kali-wireless
docker compose -f /home/yukaputz/stashes/wargames/kali/compose.yml run --rm kali-wireless
# If USB access fails, uncomment the privileged service in compose.yml and run:
# docker compose -f /home/yukaputz/stashes/wargames/kali/compose.yml run --rm kali-wireless-privileged

# Base Kali shell
sudo docker run -it --rm \
  -v "$HOME/stashes/wargames/kali:/work" \
  -w /work \
  kalilinux/kali-rolling \
  /bin/bash

# Kali shell with USB Wi-Fi passthrough (wireless tools)
# Use monitor mode on the host if desired (example): airmon-ng start wlan1
sudo docker run -it --rm \
  --net=host \
  --cap-add=NET_ADMIN --cap-add=NET_RAW \
  --device=/dev/bus/usb \
  -v "$HOME/stashes/wargames/kali:/work" \
  -w /work \
  kalilinux/kali-rolling \
  /bin/bash

# If the device is still not visible, try --privileged instead of caps/device.

apt update && apt install -y nmap metasploit-framework aircrack-ng iw wireless-tools bettercap

# To Run
cd /home/yukaputz/stashes/wargames/kali

# Two Ways to Run it.  From within the Kali shell or directly.  For example

  # Inside an interactive Kali shell after 
  docker compose run --rm kali-wireless

  # As a one‑shot command without a shell
  docker compose -f compose.yml run --rm kali-wireless nmap -sV 192.168.1.1