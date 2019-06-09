#! /bin/bash

if [ -z "$1" ]; then
    echo -e "task is missing"
    exit 1;
fi

TASK=$1;
LOG=$2;
LOG_FOLDER=".logs";

if [ TASK = "init"]; then
    if [ ! -d "$LOG_FOLDER" ]; then
        mkdir $PROJECTS_DIR
    fi
fi

if [ TASK = "commit"]; then
    tar -cf ./.logs/"${log}".tar
fi

if [ TASK = "logs"]; then
    ls "${LOG_FOLDER}"
fi

if [ TASK = "checkout"]; then
    tar -xvf .logs/"${log}".tar
fi