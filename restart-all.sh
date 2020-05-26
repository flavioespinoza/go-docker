#!/bin/bash

source ./scripts/color.sh
export green
export red
export yellow
export blue
export cyan
export cstop
export print_color_usage

echo -e "${green}Restart all begin...${cstop}"

docker system prune --force

docker image prune --force

bash scripts/start-nginx.sh

bash scripts/start-go-app.sh

echo -e "${green}Restart all complete!${cstop}"