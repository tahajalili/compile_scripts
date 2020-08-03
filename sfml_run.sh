#!/bin/bash

#this script will compile sfml app(c++) using g++.

path_to_SFML=$(whereis SFML)
if [ -z "$path_to_SFML"]
then
	echo "SFML not found"
else
	echo "Path: $path_to_SFML"
fi


compile_cpp_source=$(g++ -c main.cpp -I $path_to_SFML)
if [ ! -z "$compile_cpp_source" ]
then
	echo "Error occured during the source compile process\nERROR:$compile_cpp_source"
fi

create_run_file=$(g++ main.o -o sfml-app -lsfml-graphics -lsfml-window -lsfml-system)
if [ ! -z "$create_run_file" ]
then
	echo "Error occured during the sfml-main compile process\nERROR:$create_run_file"
fi

