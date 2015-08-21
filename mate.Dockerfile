FROM ubuntu:15.04
MAINTAINER Senthil

RUN apt-get  update  -y
RUN apt-get  install -y xvfb  xfonts-scalable mate-desktop-environment-core x11vnc 
RUN apt-get  install -y openjdk-7-doc openjdk-7-jdk
ADD eclipse-jee-mars-R-linux-gtk-x86_64.tar.gz /opt
ADD start.sh /root/start.sh
RUN chmod 755 /root/start.sh
CMD /root/start.sh
