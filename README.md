# Cloudflare DoH (DNS over HTTPS)

A docker image spinning up a  DNS over HTTPs (DoH) client serving regular DNS requests over port 53/udp.

If you want to try [DoH](https://developers.cloudflare.com/1.1.1.1/dns-over-https/) but you don't want to use a [nightly version or Firefox](https://www.ghacks.net/2018/04/02/configure-dns-over-https-in-firefox/) or just don't want to use Firefox at all, you can use the client provided by [Cloudflare](https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/).
This docker image makes that as easy as starting a docker container which will respond to DNS requests over UDP port 53, yes, just as if it was a regular DNS server.

You can use this service per machine or as a local network service so every device at home is using a non-leaking TLS secured DNS service.

**How to use the image?**

0. [Optionally] You can build it by pulling this git repo and executing `make`.
1. Spin up the service via docker: `docker run -d --name doh -p 53/udp pfcoperez/cloudflaredoh:latest`
