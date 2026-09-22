#!/bin/bash

echo "Starting deployment validation..."

if [ -f /usr/share/nginx/html/index.html ]; then
    echo "index.html found."
else
    echo "ERROR: index.html not found."
    exit 1
fi

if systemctl is-active --quiet nginx; then
    echo "Nginx is running."
else
    echo "ERROR: Nginx is not running."
    exit 1
fi

echo "Deployment validation successful."

exit 0