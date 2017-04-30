#!/bin/sh
#  ramdisk-linux.sh
#  version : 1.0
#  Created by panta on 30/04/2017.
#  email : pantagruelon@gmail.com
# creating and mounting a 5GB ramdisk on linux


if
    [ ! -d "/ramdisk" ];                                # check if /ramdisk directory doesn't exist
then                                                    # then
    mkdir '/ramdisk' ;                                  # create /ramdisk if not present
else                                                    # else
    mount -t tmpfs -o size=5000M tmpfs '/ramdisk'       # directly mount a 5GB ramdisk volume on /ramdisk'
fi
