FROM alpine:3.10.1

ARG VERSION

ENV BASE_URL="https://github.com/rancher/rke/releases/download"
ENV BINARY_FILE="v${VERSION}/rke_linux-amd64"

RUN apk add --update --no-cache curl ca-certificates && \
    curl -LO ${BASE_URL}/${BINARY_FILE} && \
    mv rke_linux-amd64 /usr/bin/rke && \
    chmod +x /usr/bin/rke && \
    apk del curl && \
    rm -f /var/cache/apk/*

WORKDIR /apps

ENTRYPOINT ["rke"]
CMD ["--help"]
