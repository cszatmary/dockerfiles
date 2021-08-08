# cszatmary/go:1.15-build
FROM golang:1.15

# Set env vars
ENV NODE_VERSION=14.17.3 \
    REDOC_CLI_VERSION=0.10.1 \
    SHED_VERSION=v0.5.0 \
    PATH=/usr/local/node/bin:$PATH

# Install node
RUN wget --progress=bar:force:noscroll "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz" -O node.tar.gz && \
    mkdir -p /usr/local/node && \
    tar -C /usr/local/node -xzf ./node.tar.gz --strip-components=1 && \
    rm ./node.tar.gz

# Install redoc-cli
RUN npm install -g redoc-cli@${REDOC_CLI_VERSION}

# Install shed
RUN curl -sSfL https://raw.githubusercontent.com/cszatmary/shed/main/scripts/install.sh | sh -s -- -b /usr/local/bin "${SHED_VERSION}"
