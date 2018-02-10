#!/bin/sh
#
# IMPORTANT: Start the webserver in tools/http_file_server.py
#            before running the build, because the final debian
#            package will be uploaded there after the build
#            is complete.
#
# Author: Neeraj Sharma

docker build -t neeraj9:ubuntu-trusty-beamparticle .

