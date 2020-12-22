# cszatma/cimg-go:1.15
FROM cimg/go:1.15

# Set env vars
ENV EJSON_VERSION=v1.2.2 \
	YARN_VERSION=1.22.10 \
	SHED_VERSION=v0.1.0

# Install Node 14 the latest LTS version
# Install it manually instead of using cimg/go:1.15-node because we want node 14 not node 12
# Once that image updates we can switch to that

# Dockerfile will pull the latest LTS release from cimg-node.
# This is copied from https://github.com/CircleCI-Public/cimg-go/blob/master/1.14/node/Dockerfile
# Copyright (c) 2019 Circle Internet Services, Inc
RUN curl -sSL "https://raw.githubusercontent.com/CircleCI-Public/cimg-node/master/ALIASES" -o nodeAliases.txt && \
	NODE_VERSION=$(grep "lts" ./nodeAliases.txt | cut -d "=" -f 2-) && \
	curl -L -o node.tar.xz "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz" && \
	sudo tar -xJf node.tar.xz -C /usr/local --strip-components=1 && \
	rm node.tar.xz nodeAliases.txt && \
	sudo ln -s /usr/local/bin/node /usr/local/bin/nodejs

RUN curl -L -o yarn.tar.gz "https://yarnpkg.com/downloads/${YARN_VERSION}/yarn-v${YARN_VERSION}.tar.gz" && \
	sudo tar -xzf yarn.tar.gz -C /opt/ && \
	rm yarn.tar.gz && \
	sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarn /usr/local/bin/yarn && \
	sudo ln -s /opt/yarn-v${YARN_VERSION}/bin/yarnpkg /usr/local/bin/yarnpkg

# Install heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh

# Install ejson
RUN cd /usr/local/bin && \
	sudo wget --progress=bar:force:noscroll https://github.com/Shopify/ejson/releases/download/${EJSON_VERSION}/linux-amd64 -O ejson && \
	sudo chmod +x ejson

# Install shed
RUN curl -sSfL https://raw.githubusercontent.com/getshiphub/shed/master/scripts/install.sh | sudo sh -s -- -b /usr/local/bin "${SHED_VERSION}"
