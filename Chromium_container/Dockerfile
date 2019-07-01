FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Pacific/Auckland

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    psmisc \
    sudo \
    xvfb \
    x11vnc \
    xdotool \
    chromium-browser && \
    apt-get -f install && \
    apt-get autoremove -y && \
    apt-get clean all

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
	&& echo $TZ > /etc/timezone
ADD xvfb-chromium /usr/bin/xvfb-chromium

COPY chromium.tar.gz /home/kiosk/.config/

ENV HOME /home/kiosk
WORKDIR /home/kiosk

ENTRYPOINT ["/usr/bin/xvfb-chromium"]
