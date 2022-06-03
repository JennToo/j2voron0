#!/bin/bash

set -ex

# Use this gcode to enable FTP
#
#  M586 P1 S1

FTP_SERVER="$1"
wget -nH -r "ftp://$FTP_SERVER/sys"
wget -nH -r "ftp://$FTP_SERVER/macros"

rm -f sys/*.bak sys/resurrect.g
dos2unix sys/*.g macros/*.g
