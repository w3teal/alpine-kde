#!/bin/sh
cd /tmp
wget https://github.com/alpine-kde/17g-alpine/releases/download/current/17g-installer-4.4.1-r0.apk -O 17g.apk
apk add 17g.apk --allow-untrusted
ln -s true /bin/locale-gen
