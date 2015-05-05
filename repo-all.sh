#!/bin/bash
if [ $# == 0 ];then
echo "usage:$0 \"command\""
exit
fi
repo forall  -p -c $1

