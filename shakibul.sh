#!/bin/bash
# SHAKIBUL-TECH VPS INSTALLER (NO TOKEN REQUIRED)

# ব্র্যান্ডিং এবং ব্যানার
clear
echo -e "======================================"
echo -e "    WELCOME TO SHAKIBUL-TECH PANEL    "
echo -e "    Developer: Shakibul               "
echo -e "======================================"
echo -e "Starting Installation... Please Wait."

# আপনার নিজস্ব গিটহাব থেকে ফাইল ডাউনলোড (লিঙ্কটি আপনার ইউজারনেম অনুযায়ী)
REPO="https://raw.githubusercontent.com/skshakibul/strategic-chapeey/main"

# মূল প্রয়োজনীয় ফাইলগুলো ডাউনলোড ও রান করা
# এখানে 'update.sh' হলো মূল স্ক্রিপ্ট যা প্যানেল সেটআপ করে
wget -q ${REPO}/update.sh -O update.sh
chmod +x update.sh
./update.sh
