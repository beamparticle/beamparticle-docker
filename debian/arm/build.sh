#!/bin/sh
#
# Author: Neeraj Sharma

cp /usr/bin/qemu-arm-static .
docker build -t neeraj9:armv7hf-debian .
