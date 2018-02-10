FROM neeraj9:debian-stretch-dev
RUN apt-get install -y liblz4-dev
RUN apt-get install -y libsctp1 procps \
    && wget http://localhost:8000/esl-erlang_20.1-1~debian~stretch_amd64.deb \
    && dpkg -i esl-erlang_20.1-1~debian~stretch_amd64.deb \
    && git clone https://github.com/beamparticle/beamparticle \
    && cd beamparticle && make deb-package \
    && filename=`find packaging -name "*.deb"` \
    && curl -X POST -H "Content-Type: multipart/form-data" -F "file=@$filename" http://localhost:8000/upload/debian-stretch
# RUN apt-get -y remove wget build-essential && apt-get -y autoremove
# wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_20.1-1~debian~stretch_amd64.deb \
CMD ["bash"]
