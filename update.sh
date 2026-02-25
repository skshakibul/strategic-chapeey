#!/bin/bash
# SHAKIBUL-TECH UNLOCKED PANEL

# রঙ সেট করা
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m'

clear
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}       WELCOME TO SHAKIBUL-TECH UNLOCKED        ${NC}"
echo -e "${YELLOW}            Developer: Shakibul                 ${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

# সার্ভার আপডেট এবং প্রয়োজনীয় টুলস ইনস্টল
echo -e "${GREEN}[+] Updating system and installing dependencies...${NC}"
apt update -y && apt upgrade -y
apt install -y wget curl unzip git

# প্যানেল ফাইল ডাউনলোড (আপনার নিজস্ব গিটহাব থেকে)
REPO="https://raw.githubusercontent.com/skshakibul/strategic-chapeey/main"

echo -e "${GREEN}[+] Fetching panel files from GitHub...${NC}"
# এখানে আপনার মূল প্যানেল বা মেনু ফাইলের নাম দিন (যেমন: menu.zip বা ubuntu.zip)
wget -q ${REPO}/ubuntu/menu.zip -O /tmp/menu.zip

if [ -f /tmp/menu.zip ]; then
    unzip -o /tmp/menu.zip -d /usr/local/sbin/
    chmod +x /usr/local/sbin/*
    rm /tmp/menu.zip
    echo -e "${GREEN}[SUCCESS] Panel installed and unlocked!${NC}"
    echo -e "${YELLOW}Type 'menu' to start the panel.${NC}"
else
    echo -e "${RED}[ERROR] Failed to download panel files. Check your GitHub link.${NC}"
fi

# প্যানেল চালু করা
menu
