#!/bin/sh
cd /opt/blog-ssr
git pull origin master
npm i
npm run build
pm2 restart server.config.js
echo "DEPLOY successfully..."
exit
done