FROM ubuntu:bionic
ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY :1
LABEL maintainer="Valery Baleyko <baleyko@gmail.com>"
LABEL version="1.0.0"
RUN apt update -yqq \
  && apt install -yqq \
    gnupg2 \
    curl \
  && echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google-chrome.list \
  && curl https://dl.google.com/linux/linux_signing_key.pub |  apt-key add - \
  && apt update -yqq \
  && apt install -yqq \
    google-chrome-stable \
    xvfb \
    x11vnc \
  && apt purge -yqq \
    curl \
  && apt -yqq autoremove \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*
ADD entrypoint.sh /
EXPOSE 5900
ENTRYPOINT ["./entrypoint.sh"]
