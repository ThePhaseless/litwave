#!/bin/bash
# if PROXY is not said, ask if script should continue

if [ -z "$PROXY" ]; then
    read -r -p "PROXY is not set, continue? (Y/n): " answer
    case ${answer,,} in
    n*)
        echo "Cancelling..."
        exit
        ;;
    esac
fi

# Check if proxy.env exists
if [ ! -f ./.env ]; then
    echo "proxy.env does not exist, please create it and run the script again."
    exit
fi

echo "Starting Traefik stack"
docker compose --env-file ./.env up -d
