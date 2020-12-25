# cszatmary/cimg-node:lts
FROM cimg/node:lts

ENV PUBLISHER_VERSION=0.0.1

# Install publisher
RUN wget --progress=bar:force:noscroll https://github.com/cszatma/publisher/releases/download/${PUBLISHER_VERSION}/publisher_${PUBLISHER_VERSION}_linux_x86_64.tar.gz && \
    mkdir -p publisher && \
    tar -C ./publisher -xzf ./publisher_${PUBLISHER_VERSION}_linux_x86_64.tar.gz && \
    sudo mv publisher/publisher /usr/local/bin && \
    rm -r ./publisher ./publisher_${PUBLISHER_VERSION}_linux_x86_64.tar.gz

# Install vercel CLI
RUN sudo yarn global add vercel --prefix /usr/local

# Install Deno
RUN curl -fsSL https://deno.land/x/install/install.sh | sudo DENO_INSTALL=/usr/local sh
