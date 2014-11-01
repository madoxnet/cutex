#!/bin/sh
#This script decodes a url encoded query string and sends it to ttyACM0
printf $(echo $QUERY_STRING | sed -e 's/%/\\x/g') >> /dev/ttyACM0
