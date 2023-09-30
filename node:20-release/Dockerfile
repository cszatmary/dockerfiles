# cszatmary/node:20-release
FROM phusion/baseimage:jammy-1.0.1

RUN apt-get update && \
    apt-get upgrade -y -o Dpkg::Options::="--force-confold" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV NODE_VERSION=20.7.0 \
    PATH=/usr/local/node/bin:$PATH
RUN curl -fsSL "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz" -o node.tar.gz && \
    mkdir -p /usr/local/node && \
    tar -C /usr/local/node -xzf ./node.tar.gz --strip-components=1 && \
    rm ./node.tar.gz && \
    # smoke test
    node --version

ENV PNPM_VERSION=8.8.0
RUN npm install -g pnpm@${PNPM_VERSION} && \
    # remove npm cache, npm cache clean isn't quite enough as it still leaves behind some files
    rm -rf /root/.npm && \
    # smoke tests
    pnpm --version
