#!/bin/bash
apt update&&apt upgrade -y
cat >/etc/apt/sources.list<<EOF
deb https://cloudflaremirrors.com/debian/ bookworm main contrib non-free non-free-firmware
deb https://cloudflaremirrors.com/debian/ bookworm-updates main contrib non-free non-free-firmware
deb https://cloudflaremirrors.com/debian/ bookworm-backports main contrib non-free non-free-firmware
deb https://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
EOF
apt update&&apt upgrade -y
apt dist-upgrade -y &&apt autoremove&&reboot 