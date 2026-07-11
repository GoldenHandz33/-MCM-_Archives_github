#!/data/data/com.termux/files/usr/bin/bash

cd ~/Sovereign_IP || exit

echo "Checking for remote updates..."
git pull origin master --rebase

echo "Staging corporate archives..."
git add .

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

echo "Committing updates..."
git commit -m "Administrative Archive Sync: $TIMESTAMP"

echo "Pushing securely to GitHub..."
git push -u origin master

echo "Synchronization complete."
