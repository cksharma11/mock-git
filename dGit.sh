#! /bin/bash

if [ -z "$1" ]; then
    echo -e "task is missing"
    exit 1;
fi

TASK=$1;
LOG=$2;
LOG_FOLDER=".logs";

if [ $TASK = "init" ]; then
    echo "---Sucess---"
    mkdir $LOG_FOLDER
fi

if [ $TASK = "commit" ]; then
    tar -cf ./"${LOG_FOLDER}"/"${LOG}".tar .
    echo "---Sucess---"
fi

if [ $TASK = "logs" ]; then
    ls "${LOG_FOLDER}"
    echo "---Sucess---"
fi

if [ $TASK = "checkout" ]; then
    tar -xvf .logs/"${LOG}".tar
    echo "---Sucess---"
fi