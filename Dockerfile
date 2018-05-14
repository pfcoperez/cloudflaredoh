FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install wget
RUN cd / && wget https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.tgz -O - | tar xvfz -

CMD ["/cloudflared", "proxy-dns", "--address", "0.0.0.0"]

EXPOSE 53/udp
