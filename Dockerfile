FROM ubuntu:18.04

LABEL maintainer "KENICHI NAITO"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y

# RUN apt-get install -y software-properties-common python-software-properties
RUN apt-get install -y software-properties-common

# RUN apt-add-repository -y ppa:texlive-backports/ppa

RUN apt-get install -y texlive-lang-cjk

COPY files/entry-script.bash /entry-script.bash

RUN chmod a+x /entry-script.bash

COPY files/.vimrc /root/.vimrc

COPY files/.bashrc /root/.bashrc

CMD ["/entry-script.bash"]
