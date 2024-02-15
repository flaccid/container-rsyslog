FROM debian
RUN apt-get update && \
    apt-get -y install bash procps iproute2 rsyslog && \
    rm -rf /var/lib/apt/lists/*
COPY udp.conf /etc/rsyslog.d/00-udp.conf
CMD ["/usr/sbin/rsyslogd", "-n", "-f", "/etc/rsyslog.conf"]
