#!/bin/bash
if [[ $(crontab -l | egrep -v '^(#|$)' | grep -q "test"; echo $?) == 1 ]]
then
(crontab -l ; printf "* 1 * * * echo test\n\n") | crontab -
fi
