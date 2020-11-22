FROM alpine/git:v2.26.2

LABEL org.opencontainers.image.source="https://github.com/wbstack/docker-build-util"

WORKDIR /tmp

RUN apk add libarchive-tools

# Set a docker email and user, otherwise places like github fatal saying "Please tell me who you are."
RUN git config --global user.email "docker-build-util@wbstack.com" \
    && git config --global user.name "Docker Build Util"
