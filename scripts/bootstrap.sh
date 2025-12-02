#!/bin/sh
set -e

# GitHub 레포가 이미 /mnt/onixauto 에 있다고 가정하거나,
# 필요하면 여기서 clone 해도 상관 없음.

mountpoint -q /mnt || mount /dev/sda1 /mnt || true

nixos-install --flake /mnt/onixauto#onixauto --no-root-passwd

reboot
