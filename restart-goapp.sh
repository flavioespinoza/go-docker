#!/bin/bash

source ./scripts/color.sh
export green
export red
export yellow
export blue
export cyan
export cstop
export print_color_usage

echo -e "${blue}Restart go_app begin...${cstop}"

docker stop go_app
docker rm go_app

bash scripts/start-go-app.sh

echo -e "${blue}Restart go_app complete!${cstop}"