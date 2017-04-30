#!/bin/sh
#  ramdisk-linux.sh
#  version : 1.0
#  Created by panta on 30/04/2017.
#  email : pantagruelon@gmail.com
# creating and mounting a 5GB ramdisk on linux


if
[ ! -d "/ramdisk" ];                                # check if /ramdisk directory exists
then
mkdir '/ramdisk' ;                                  # create /ramdisk if not present
fi

if [ -d "/ramdisk" ];
then
    mount -t tmpfs -o size=5000M tmpfs '/ramdisk'   # mount a 5GB ramdisk volume on /ramdisk'
fi
