FROM ubuntu:16.04
# CMD ["bash"]
RUN touch /etc/apt/apt.conf.d/99fixbadproxy \
    && echo "Acquire::http::Pipeline-Depth 0;" >> /etc/apt/apt.conf.d/99fixbadproxy \
    && echo "Acquire::http::No-Cache true;" >> /etc/apt/apt.conf.d/99fixbadproxy \
    && echo "Acquire::BrokenProxy true;" >> /etc/apt/apt.conf.d/99fixbadproxy \
    && apt-get update -o Acquire::CompressionTypes::Order::=gz \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get update -y \
    && apt-get -y upgrade && apt-get install -y \
    && git curl wget build-essential libssl-dev zlib1g-dev \
    && wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_20.1-1~ubuntu~xenial_amd64.deb \
    && dpkg -i esl-erlang_20.1-1~ubuntu~xenial_amd64.deb \
    && git clone https://github.com/beamparticle/beamparticle \
    && cd beamparticle && make deb-package \
    && filename=`find packages -name "*.deb"` \
    && curl -X POST -H "Content-Type: multipart/form-data" -F "data=@$filename" http://localhost:8000/upload/ubuntu-xenial
# RUN apt-get -y remove wget build-essential && apt-get -y autoremove
