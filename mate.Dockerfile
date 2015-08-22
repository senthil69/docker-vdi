FROM ubuntu:15.04
MAINTAINER Senthil

RUN apt-get  update  -y
RUN apt-get  install -y fonts-freefont-ttf fonts-freefont-otf   xfonts-scalable  xfonts-75dpi xfonts-100dpi
RUN apt-get  install -y mate-desktop-environment-core  
RUN apt-get  install -y openjdk-7-doc openjdk-7-jdk
RUN apt-get  install -y tightvncserver
ADD eclipse-jee-mars-R-linux-gtk-x86_64.tar.gz /opt
ADD vnc-4_1_3-x86_linux.tar.gz  /opt
ADD start.sh /root/start.sh
RUN chmod 755 /root/start.sh
CMD /root/start.sh
