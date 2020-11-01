FROM bitnami/minideb-extras:stretch

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -q update
RUN apt-get install -y wget libusb-1.0-0 
RUN apt-get install -y libudev1 
RUN apt-get install -y pm-utils 

RUN wget http://download.tinkerforge.com/tools/brickd/linux/brickd_linux_latest_amd64.deb
RUN dpkg -i brickd_linux_latest_amd64.deb

EXPOSE 4223

CMD /usr/bin/brickd
