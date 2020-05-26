#!/bin/bash

source ./scripts/color.sh
export green
export red
export yellow
export blue
export cyan
export cstop
export print_color_usage

echo -e "${cyan}Restart nginx_proxy begin...${cstop}"

docker stop nginx_proxy
docker rm nginx_proxy

bash scripts/start-nginx.sh

echo -e "${cyan}Restart nginx_proxy complete!${cstop}"