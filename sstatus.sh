#!/usr/bin/env bash

# check the status of the hosts in the .ssh/config file

command="date +\"Date: %Y-%m-%d %H:%M\";printf \"Uptime: \";uptime -p;printf \"uname: \";uname -a"

hosts=$(grep "Host " "$HOME/.ssh/config")

echo "$hosts" | while IFS= read -r host; do
    name="$(echo "$host" | awk '{print $2}')"
    echo -e "\e[32m:: $name\e[39m"
    ssh -o ConnectTimeout=5 -n "$name" "$command"
done
