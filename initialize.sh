#!/bin/bash

initialize_workinfo(){
    #initialize_workinfo
    #echo -e `date +%Y-%m-%d-[%H%M%S]` initialize_workinfo >> /home/runner/runner.log
    #配置工作目录
    cd /tmp
    apt install -y wget curl ffmpeg
    wget https://github.com/hr3lxphr6j/bililive-go/releases/download/v0.7.8/bililive-linux-amd64.tar.gz
    tar zxvf bililive-linux-amd64.tar.gz
    chmod +x bililive-linux-amd64
    mv ./bililive-linux-amd64 /usr/bin/bililive-go
    rm ./bililive-linux-amd64.tar.gz
    initialize_exit0
}

initialize_exit0(){
    #initialize_exit0
	#echo -e `date +%Y-%m-%d-[%H%M%S]` initialize_exit0 >> /home/runner/runner.log
	exit 0
}

initialize_start(){
	#initialize_start
    #echo -e `date +%Y-%m-%d-[%H%M%S]` initialize_start > /home/runner/runner.log
    initialize_workinfo

}

#Start
initialize_start