#!/bin/sh
# Exit immediately if a command fails
set -e

# Start Apache httpd in the background
httpd-foreground &

# Start Cloudflare tunnel in the foreground, pointing to the local Apache server
# It reads the token from the CLOUDFLARE_TOKEN environment variable
exec cloudflared tunnel --url http://localhost:80 run --token ${CLOUDFLARE_TOKEN}
