FROM alpine/git:v2.34.1

LABEL org.opencontainers.image.source="https://github.com/wbstack/docker-build-util"

WORKDIR /tmp

RUN apk add --no-cache libarchive-tools curl

# Set a docker email and user, otherwise places like github fatal saying "Please tell me who you are."
RUN git config --global user.email "docker-build-util@wbstack.com" \
    && git config --global user.name "Docker Build Util"
