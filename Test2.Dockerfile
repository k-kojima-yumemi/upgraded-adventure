# syntax=docker/dockerfile:1

FROM ubuntu:jammy

RUN <<EOF
apt-get update
apt-get install -y vim --no-install-recommends

apt-get clean
rm -rf /var/lib/apt/lists/*
EOF
