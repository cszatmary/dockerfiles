# cszatma/go:1.14-release
FROM phusion/baseimage:bionic-1.0.0

# Set env vars
ENV GO_VERSION=1.14.7 \
    EJSON2ENV_VERSION=v2.0.0 \
    PATH=/usr/local/lib/go/bin:$PATH

# Install any necessary packages
RUN install_clean make wget

# Install go
RUN wget --progress=bar:force:noscroll https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz && \
    tar -C /usr/local/lib -xzf ./go$GO_VERSION.linux-amd64.tar.gz && \
    rm ./go$GO_VERSION.linux-amd64.tar.gz

# Install ejson2env
RUN cd /usr/local/bin && \
    wget --progress=bar:force:noscroll https://github.com/Shopify/ejson2env/releases/download/$EJSON2ENV_VERSION/linux-amd64 -O ejson2env && \
    chmod +x ejson2env
