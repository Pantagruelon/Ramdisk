#!/bin/sh
#  ramdisk.sh
#  version 1.0
#  Created by panta on 30/04/2017.
#  email: pantagruelon@gmail.com

# Creating and mounting a 5GB ramdisk on MacOS - OsX
if
! test -e /Volumes/\"5GB-ramdisk\";
then
diskutil erasevolume 'HFS+' '5GB-Ramdisk' `hdiutil attach -nomount ram://10240000`      # Verify if already mount and if not, mount the 5GB volume
fi
