#! /bin/bash

GREEN="\033[0;32m"
RED="\033[0;31m"

if [ -z "$1" ]; then
    echo -e "${RED}error 081 : task is missing ✗"
    exit 1;
fi

TASK=$1;
LOG=$2;
LOG_FOLDER=".logs";

if [ $TASK = "init" ]; then
    echo -e "${GREEN}task executed ✔"
    mkdir $LOG_FOLDER
fi

if [ $TASK = "commit" ]; then
    tar -cf ./"${LOG_FOLDER}"/"${LOG}".tar .
    echo -e "${GREEN}task executed ✔"
fi

if [ $TASK = "logs" ]; then
    ls "${LOG_FOLDER}"
    echo -e "${GREEN}task executed ✔"
fi

if [ $TASK = "checkout" ]; then
    tar -xvf .logs/"${LOG}".tar
    echo -e "${GREEN}task executed ✔"
fi