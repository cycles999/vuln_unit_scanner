#!/bin/bash


files=$(find /etc/systemd/system)

for file in $files;
do
        if [ -w $file ]
        then
                echo  $file
        fi
done
