FROM fedora

EXPOSE 655/udp
VOLUME /etc/tinc
ENTRYPOINT ["tincd"]

RUN dnf -y install \
	tinc \
	iproute \
	iputils \
	tcpdump \
	; dnf clean all

