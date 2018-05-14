all: image
image:
	docker build  -t pfcoperez/cloudflaredoh:0.1 -t pfcoperez/cloudflaredoh:latest .
