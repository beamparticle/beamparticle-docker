FROM resin/armv7hf-debian-qemu
#FROM resin/armv7hf-debian
#RUN apt-get update -y \
#    && apt-get -y upgrade && apt-get install -y apt-utils \
#    && apt-get install -y git curl \
#    && apt-get install -y \
#       wget build-essential libssl-dev libwxgtk3.0 zlib1g-dev
# RUN apt-get -y remove wget build-essential && apt-get -y autoremove
# wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_20.1-1~debian~stretch_amd64.deb \

RUN apt-get update \
    && apt-get install -y bash \
    && apt-get install -y apt-utils \
    && apt-get install -y git curl \
    && apt-get install -y \
       wget build-essential libssl-dev libwxgtk3.0 zlib1g-dev

COPY qemu-arm-static /usr/bin/qemu-arm-static

#CMD ["/usr/bin/resin-xbuild", "bash"]
#CMD [ "/bin/bash" , "resin-xbuild" ]
#CMD "/usr/bin/qemu-arm-static /bin/bash"
