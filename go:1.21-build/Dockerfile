# cszatmary/go:1.21-build
FROM golang:1.21

ENV NODE_VERSION=20.7.0 \
    PATH=/usr/local/node/bin:$PATH
RUN curl -fsSL "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz" -o node.tar.gz && \
    mkdir -p /usr/local/node && \
    tar -C /usr/local/node -xzf ./node.tar.gz --strip-components=1 && \
    rm ./node.tar.gz && \
    # smoke test
    node --version

ENV SHED_VERSION=v0.5.1
RUN curl -fsSL https://raw.githubusercontent.com/cszatmary/shed/main/scripts/install.sh | sh -s -- -b /usr/local/bin "${SHED_VERSION}" && \
    # smoke test
    shed --version

ENV PNPM_VERSION=8.8.0 \
    REDOC_CLI_VERSION=0.10.1
RUN npm install -g pnpm@${PNPM_VERSION} redoc-cli@${REDOC_CLI_VERSION} && \
    # remove npm cache, npm cache clean isn't quite enough as it still leaves behind some files
    rm -rf /root/.npm && \
    # smoke tests
    pnpm --version && \
    redoc-cli --version
