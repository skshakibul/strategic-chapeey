#!/bin/bash
# SHAKIBUL-TECH NO-EXPIRE FIX

# সিস্টেম টাইম ফিক্স (যাতে সার্ভার মনে করে মেয়াদ আছে)
# এটি একটি সাময়িক সমাধান যদি ফাইল এনকোড করা থাকে
date -s "2024-01-01" > /dev/null 2>&1

# আপনার গিটহাব থেকে সরাসরি ক্লিন ফাইল নামানো
REPO="https://raw.githubusercontent.com/skshakibul/strategic-chapeey/main/ubuntu"
wget -q ${REPO}/menu.zip -O /tmp/menu.zip

# আনজিপ এবং পারমিশন
if [ -f /tmp/menu.zip ]; then
    unzip -o /tmp/menu.zip -d /usr/local/sbin/
    chmod +x /usr/local/sbin/*
    rm /tmp/menu.zip
    
    # সার্ভার টাইম ঠিক করা (ইনস্টল শেষে)
    ntpdate pool.ntp.org > /dev/null 2>&1
    
    clear
    echo "===================================="
    echo "   INSTALLATION SUCCESS (FIXED)     "
    echo "       DEVELOPER: SHAKIBUL          "
    echo "===================================="
    echo "Type 'menu' to start."
else
    echo "Error: menu.zip missing!"
fi
