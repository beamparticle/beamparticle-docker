FROM ubuntu:14.04
# CMD ["bash"]
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 16126D3A3E5C1192 \
    && apt-get update -y \
    && apt-get -y upgrade && apt-get install -y \
    && git curl wget build-essential libssl-dev zlib1g-dev \
    && https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_20.1-1~ubuntu~trusty_amd64.deb \
    && dpkg -i esl-erlang_20.1-1~ubuntu~trusty_amd64.deb \
    && git clone https://github.com/beamparticle/beamparticle \
    && cd beamparticle && make deb-package \
    && filename=`find packages -name "*.deb"` \
    && curl -X POST -H "Content-Type: multipart/form-data" -F "data=@$filename" http://localhost:8000/upload/ubuntu-trusty
# RUN apt-get -y remove wget build-essential && apt-get -y autoremove
