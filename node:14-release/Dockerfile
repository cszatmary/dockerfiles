# cszatmary/node:14-release
FROM phusion/baseimage:bionic-1.0.0

# Set env vars
ENV NODE_VERSION=14.17.0 \
    YARN_VERSION=1.22.10

# Install any necessary packages
RUN install_clean wget

# Install node
RUN wget --progress=bar:force:noscroll "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz" -O node.tar.gz && \
    mkdir -p /usr/local/node && \
    tar -C /usr/local/node -xzf ./node.tar.gz --strip-components=1 && \
    rm ./node.tar.gz && \
    ln -s /usr/local/node/bin/node /usr/local/bin/node

# Install yarn
RUN wget --progress=bar:force:noscroll "https://yarnpkg.com/downloads/${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz" -O yarn.tar.gz && \
    mkdir -p /usr/local/yarn && \
    tar -C /usr/local/yarn -xzf ./yarn.tar.gz --strip-components=1 && \
    rm ./yarn.tar.gz && \
    ln -s /usr/local/yarn/bin/yarn /usr/local/bin/yarn && \
    ln -s /usr/local/yarn/bin/yarnpkg /usr/local/bin/yarnpkg
