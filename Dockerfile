FROM alpine:3.15

# Change timezone
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
RUN echo "America/Los_Angeles" > /etc/timezone
RUN apk del tzdata

COPY entrypoint.sh /
COPY dobackup.sh /

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff less python3 py3-pip && \
	pip3 install awscli==1.22.54 && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/* && \
	chmod +x /entrypoint.sh /dobackup.sh

ENTRYPOINT /entrypoint.sh
