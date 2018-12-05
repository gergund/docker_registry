#!/bin/bash

docker run -d -p 443:5000 --name registry \
  -v `pwd`/ssl:/ssl \
  -v `pwd`/data:/var/lib/registry \
  -e REGISTRY_HTTP_SECRET=123123qa \
  -e REGISTRY_HTTP_ADDR=0.0.0.0:5000 \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/ssl/fullchain1.pem \
  -e REGISTRY_HTTP_TLS_KEY=/ssl/privkey1.pem \
  registry:2
