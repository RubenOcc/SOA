#!/usr/bin/env bash

#set -e

CK='\u2714'
ER='\u274c'

alias cls='printf "\033c"'

export DEV_UID=$(id -u)
export DEV_GID=$(id -g)

app_start()
{
    sudo rm -rf ./storage
    docker-compose -f docker-compose.yml down &&
    docker-compose -f docker-compose.yml up
}

app_docker_images_build()
{
   sudo rm -f storage.tar.gz
   sudo tar -czpf storage.tar.gz storage
   docker-compose -f docker-compose.build.yml build 
}

case "$1" in
"start")
    app_start
    ;;
"build")
    app_dockedocr_images_build
    ;;
*)
    echo -e "\n\n\n$ER [APP] No se especifico un comando valido\n"
    ;;
esac