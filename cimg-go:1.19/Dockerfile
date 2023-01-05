# cszatmary/cimg-go:1.19
FROM cimg/go:1.19-node

# Set env vars
ENV SHED_VERSION=v0.5.1

# Install shed
RUN curl -sSfL https://raw.githubusercontent.com/cszatmary/shed/main/scripts/install.sh | sudo sh -s -- -b /usr/local/bin "${SHED_VERSION}"
