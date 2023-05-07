#!/bin/bash


files=$(find /etc/systemd/system)

for file in $files;
do
        if [ -w $file ] && [ $(readlink $file) != "/dev/null" ]
        then
                echo  $file
        fi
done
