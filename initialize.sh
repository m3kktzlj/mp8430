#!/bin/bash

initialize_workinfo(){
    #initialize_workinfo
    #echo -e `date +%Y-%m-%d-[%H%M%S]` initialize_workinfo >> /home/runner/runner.log
    #配置工作目录
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