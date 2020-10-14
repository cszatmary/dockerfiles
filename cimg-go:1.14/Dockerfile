# cszatma/cimg-go:1.14
FROM cimg/go:1.14-node

# Set env vars
ENV EJSON_VERSION=v1.2.2

# Install heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh

# Install ejson
RUN cd /usr/local/bin && \
    sudo wget --progress=bar:force:noscroll https://github.com/Shopify/ejson/releases/download/${EJSON_VERSION}/linux-amd64 -O ejson && \
    sudo chmod +x ejson

