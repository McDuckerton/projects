#!/bin/bash

function banner {
echo '                   __      __      '
echo '  __  ______  ____/ /___ _/ /____  '
echo ' / / / / __ \/ __  / __ `/ __/ _ \ '
echo '/ /_/ / /_/ / /_/ / /_/ / /_/  __/ '
echo '\__,_/ .___/\__,_/\__,_/\__/\___/  '
echo '    /_/                            '

}
 
clear -x
banner

sudo apt-get update -y
wait
sudo apt-get dist-upgrade -y
wait
sudo apt-get autoremove -y
wait
echo "update complete"
