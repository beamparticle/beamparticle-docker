#!/bin/sh
#
# Author: Neeraj Sharma <neeraj.sharma@alumni.iitg.ernet.in>
#
# Download ESL Erlang packages from erlang-solutions to build
# source within the docker image
#
# Remember to run this script before using
# the http_file_server.py as follows:
#
#     ./download-erlang.sh
#     python http_file_server.py
#
# Note that the file server shall listen on port 8000 by default
#
debpackages="
esl-erlang_20.1-1~debian~stretch_amd64.deb
esl-erlang_20.1-1~debian~jessie_amd64.deb"

for i in $debpackages
do
    wget -c https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/$i;
done

centospackages="
esl-erlang_20.1-1~centos~7_amd64.rpm
esl-erlang_20.1-1~centos~6_amd64.rpm"

for i in $centospackages
do
    wget -c https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/$i;
done


