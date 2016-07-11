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

MSG="$1"

if [[ -n "$PUSH_BULLET_TOKEN"  ]]; then
	curl -u $PUSH_BULLET_TOKEN: https://api.pushbullet.com/v2/pushes -d type=note -d title="Alert" -d body="$MSG"
fi
