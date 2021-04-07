#!/bin/bash

STEAMCMD_PATH="/opt/steam"
APP_ID=730
APP_PATH="./csgogame"

mkdir out

echo "## Making sure game is present and up-to-date.."

$STEAMCMD_PATH/steamcmd.sh +login anonymous +force_install_dir $APP_PATH +app_update $APP_ID validate +quit

echo "## Pretending to compile map.."

ls $APP_PATH/csgo/bin

sleep 5

echo "## Complete!"

echo "map" > out/mymap.bsp

echo "looks good to me"
