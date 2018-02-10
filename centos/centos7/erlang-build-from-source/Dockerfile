# https://resin.io/blog/building-arm-containers-on-any-x86-machine-even-dockerhub/

FROM neeraj9:centos7-dev

RUN yum -y install lksctp-tools procps \
    && wget http://localhost:8000/otp_src_20.1.tar.gz \
    && tar -xzf otp_src_20.1.tar.gz \
    && cd otp_src_20.1 \
    && ./configure \
    erl_xcomp_kqueue=yes \
    --without-megaco \
    --without-termcap \
    --without-odbc \
    --without-wx \
    --without-debugger \
    --without-et \
    --without-javac \
    --without-edoc \
    --without-erl_docgen \
    --without-ic \
    --without-orber \
    --without-pman \
    --without-toolbar \
    --without-tv \
    --without-webtool \
    --without-typer \
    --without-observer \
    --without-cosEvent \
    --without-cosEventDomain \
    --without-cosFileTransfer \
    --without-cosNotification \
    --without-cosProperty \
    --without-cosTime \
    --without-cosTransactions \
    --with-hipe \
    && make \
    && make install

#CMD ["bash"]
