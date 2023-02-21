#!/bin/bash
cd /tmp
apk add wget curl
curl https://github.com/alpine-kde/17g-alpine/releases/download/current/17g-installer-4.4.1-r0.apk > 17g.apk
apk add *.apk --allow-untrusted
ln -s true /bin/locale-gen || true
