FROM fedora

EXPOSE 655/udp
VOLUME /etc/tinc
ENTRYPOINT ["/entrypoint.sh"]

RUN dnf -y install \
	tinc \
	iproute \
	iputils \
	tcpdump \
	; dnf clean all

COPY entrypoint.sh /entrypoint.sh
COPY start.sh /start.sh

CMD ["/start.sh"]
