#!/bin/bash
Setup () {
 	mkdir $HOME/sources
 	export J=$(/usr/bin/nproc)
 	export SRC_PATH=$HOME/sources
 } 
Wet () {
 	cd $SRC_PATH
 	echo "insert path for program"
	read path
	wget $path
	echo "insert  zip-name for program"
	read namezip
	echo "insert name for program"
	read name 
 	tar xf  $namezip 
 	cd $name
 	./configure --prefix=/usr
 	make -j$J
 	sudo make -j$J install
 	cd ..
 }
 Setup
 Wet
