FROM kalilinux/kali-rolling

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    nmap \
    metasploit-framework \
    aircrack-ng \
    iw \
    wireless-tools \
    bettercap \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /work

CMD ["/bin/bash"]
