#!/bin/bash - 
#===============================================================================
#
#          FILE: pushbullet.sh
# 
#         USAGE: ./pushbullet.sh 
# 
#   DESCRIPTION: Send notification from Linux to my devices.
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Zhiyi Sun (zsun), zhiyisun@msn.com
#  ORGANIZATION: 
#       CREATED: 06/25/2016 04:35:30 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

TOKEN="o.Kx1e2XBnKS80mraj8PubpMIVwQLdtL5i"
MSG="$1"

curl -u $TOKEN: https://api.pushbullet.com/v2/pushes -d type=note -d title="Alert" -d body="$MSG"
