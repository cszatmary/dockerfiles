# cszatmary/go:1.21-release
FROM phusion/baseimage:jammy-1.0.1

RUN apt-get update && \
    apt-get upgrade -y -o Dpkg::Options::="--force-confold" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV GO_VERSION=1.21.1 \
    PATH=/usr/local/lib/go/bin:$PATH
RUN curl -fsSL https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz -o go.tar.gz && \
    tar -C /usr/local/lib -xzf ./go.tar.gz && \
    rm ./go.tar.gz && \
    # smoke test
    go version

ENV EJSON2ENV_VERSION=2.0.5
RUN curl -fsSL https://github.com/Shopify/ejson2env/releases/download/v${EJSON2ENV_VERSION}/ejson2env_${EJSON2ENV_VERSION}_linux_amd64.tar.gz -o ejson2env.tar.gz && \
    mkdir -p /tmp/ejson2env && \
    tar -C /tmp/ejson2env -xzf ./ejson2env.tar.gz && \
    mv /tmp/ejson2env/ejson2env /usr/local/bin && \
    rm -rf /tmp/ejson2env ./ejson2env.tar.gz && \
    # smoke test
    ejson2env --version
