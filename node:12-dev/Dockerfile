# cszatma/node:12-dev
FROM node:12

# Install go
RUN wget https://dl.google.com/go/go1.14.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.14.linux-amd64.tar.gz && \
    rm -f go1.14.linux-amd64.tar.gz

USER node

ENV PATH=/usr/local/go/bin:/home/node/go/bin:$PATH

RUN go get github.com/cszatma/publisher

RUN node --version
