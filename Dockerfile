FROM debian
LABEL maintainer="kidmose <kidmose@gmail.com>"

RUN set -x && apt-get update && apt-get -y install \
	firefox-esr \
	gosu \
	&& rm -rf /var/lib/apt/lists/*

RUN set -x && \
	useradd firefox && \
	mkdir -p /home/firefox && \
	chown -R firefox /home/firefox

CMD ["gosu", "firefox", "firefox"]
