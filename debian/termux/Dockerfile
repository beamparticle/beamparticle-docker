# https://github.com/termux/termux-packages/blob/master/scripts/Dockerfile
FROM termux/package-builder
RUN apt-get update \
    && apt-get install -y procps \
    && apt-get install -y erlang

RUN git clone https://github.com/beamparticle/beamparticle \
    && cd beamparticle \
    && ./rebar3 as prod tar \
    && filename=`find . -name "*.tar.gz"` \
    && curl -X POST -H "Content-Type: multipart/form-data" -F "file=@$filename" http://localhost:8000/upload/debian-termux


# RUN apt-get -y remove wget build-essential && apt-get -y autoremove
# wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_20.1-1~debian~stretch_amd64.deb \
#CMD ["bash"]
