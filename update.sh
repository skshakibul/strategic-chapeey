#!/bin/bash
# SHAKIBUL-TECH UNLOCKED PANEL

# প্রয়োজনীয় প্যাকেজ ইনস্টল
apt update && apt install -y unzip wget curl

# আপনার গিটহাবের পাথ সেট করা
REPO="https://raw.githubusercontent.com/skshakibul/strategic-chapeey/main/ubuntu"

# মেনু জিপ ফাইল ডাউনলোড করা
echo "Downloading panel files..."
wget -q ${REPO}/menu.zip -O /tmp/menu.zip

# ফাইল আনজিপ এবং সেটআপ
if [ -f /tmp/menu.zip ]; then
    unzip -o /tmp/menu.zip -d /usr/local/sbin/
    chmod +x /usr/local/sbin/*
    rm /tmp/menu.zip
    echo -e "\e[32mInstallation Complete! Type 'menu' to start.\e[0m"
else
    echo -e "\e[31mError: menu.zip not found in your GitHub ubuntu folder!\e[0m"
fi
