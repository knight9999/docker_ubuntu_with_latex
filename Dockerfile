FROM ubuntu:17.10

MAINTAINER KENICHI NAITO

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y

RUN apt-get install -y software-properties-common python-software-properties

RUN apt-add-repository -y ppa:texlive-backports/ppa

RUN apt-get install -y texlive-lang-cjk

COPY files/entry-script.bash /entry-script.bash

RUN chmod a+x /entry-script.bash

COPY files/.vimrc /root/.vimrc

COPY files/.bashrc /root/.bashrc

CMD ["/entry-script.bash"]
