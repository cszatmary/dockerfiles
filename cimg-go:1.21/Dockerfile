# cszatmary/cimg-go:1.21
FROM cimg/go:1.21-node

ENV SHED_VERSION=v0.5.1
RUN curl -fsSL https://raw.githubusercontent.com/cszatmary/shed/main/scripts/install.sh | sudo sh -s -- -b /usr/local/bin "${SHED_VERSION}" && \
    # smoke test
    shed --version
