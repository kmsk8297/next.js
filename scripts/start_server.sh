#!/bin/bash
# Stop any running instances of your app
pm2 stop all || true

# Start the Next.js app using PM2 (a process manager)
cd /var/www/my-nextjs-app
pm2 start npm -- start
