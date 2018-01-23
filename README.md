docker-smtp-proxy
=================
Docker image to run HAProxy for proxying SMTP.  

[![Build Status](https://img.shields.io/travis/cargomedia/docker-smtp-proxy/master.svg)](https://travis-ci.org/cargomedia/docker-smtp-proxy)
[![Docker Hub](https://img.shields.io/badge/Docker_Hub-cargomedia%2Fsmtp--proxy-22b8eb.svg)](https://hub.docker.com/r/cargomedia/smtp-proxy/)

Usage
-----
Proxy SMTP from `localhost:25000` to `example.com:25`:
```
docker run -p 25000:25000 -e SMTP_DESTINATION='example.com:25' cargomedia/smtp-proxy
```

Development
-----------
Build the image:
```
docker build -t cargomedia/smtp-proxy .
```

The image will be pushed to Docker Hub by the travis build.
