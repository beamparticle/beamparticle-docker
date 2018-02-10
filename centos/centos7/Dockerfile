FROM centos:centos7
RUN yum update -y \
    && yum -y groupinstall 'Development Tools' \
    && yum -y install git curl wget \
    && yum -y install \
       openssl-devel gtk+-devel zlib-devel wxGTK-devel
# RUN apt-get -y remove wget build-essential && apt-get -y autoremove
# wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_20.1-1~debian~stretch_amd64.deb \

#CMD ["bash"]
