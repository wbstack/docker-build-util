FROM alpine/git:1.0.7
WORKDIR /tmp

RUN apk add libarchive-tools

# Set a docker email and user, otherwise places like github fatal saying "Please tell me who you are."
RUN git config --global user.email "docker-util-fetcher@wbstack.com" \
    && git config --global user.name "Docker Util Fetcher"
