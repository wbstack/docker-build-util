FROM alpine/git:1.0.7
WORKDIR /tmp
RUN apk add libarchive-tools
