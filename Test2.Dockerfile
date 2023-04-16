# syntax=docker/dockerfile:1

FROM ubuntu:jammy

RUN <<EOF
apt-get update
apt-get install -y vim python3.10 --no-install-recommends

apt-get clean
rm -rf /var/lib/apt/lists/*
EOF

RUN python3.10 -c 'print("Hello world")' > /root/hello.txt
