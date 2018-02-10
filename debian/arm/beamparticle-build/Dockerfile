# https://resin.io/blog/building-arm-containers-on-any-x86-machine-even-dockerhub/
FROM neeraj9:armv7hf-debian-erlang
RUN apt-get install -y libsctp1 procps

RUN apt-get install -y liblz4-dev
 
RUN [ "cross-build-start" ]

#RUN git clone https://github.com/erlang/rebar3 \
#    && cd rebar3 \
#    && DEBUG=1 ./bootstrap \
#    cp rebar3 /usr/bin/

#    && cp /usr/bin/rebar3 . \
RUN git clone https://github.com/beamparticle/beamparticle \
    && cd beamparticle \
    && make deb-package \
    && filename=`find packaging -name "*.deb"` \
    && curl -X POST -H "Content-Type: multipart/form-data" -F "file=@$filename" http://localhost:8000/upload/debian-armv7hf

RUN [ "cross-build-end" ]  

RUN cd beamparticle \
    && filename=`find packaging -name "*.tar.gz"` \
    && curl -X POST -H "Content-Type: multipart/form-data" -F "file=@$filename" http://localhost:8000/upload/debian-armv7hf

# RUN apt-get -y remove wget build-essential && apt-get -y autoremove
# wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_20.1-1~debian~stretch_amd64.deb \
#CMD ["bash"]
