# cszatmary/cimg-go:1.16
FROM cimg/go:1.16-node

# Set env vars
ENV SHED_VERSION=v0.5.0

# Install heroku CLI
RUN curl https://cli-assets.heroku.com/install.sh | sh

# Install shed
RUN curl -sSfL https://raw.githubusercontent.com/cszatmary/shed/main/scripts/install.sh | sudo sh -s -- -b /usr/local/bin "${SHED_VERSION}"
