# cszatmary/cimg-node:20
FROM cimg/node:20.7

ENV DENO_VERSION=v1.29.0
RUN curl -fsSL https://deno.land/x/install/install.sh | sudo DENO_INSTALL=/usr/local sh -s ${DENO_VERSION} && \
    # smoke test
    deno --version

ENV BUN_VERSION=v1.0.3
RUN curl -fsSL https://bun.sh/install | sudo BUN_INSTALL=/usr/local bash -s "bun-${BUN_VERSION}" && \
    # sudo ln -s $HOME/.bun/bin/bun /usr/local/bin/bun && \
    # smoke test
    bun --version

RUN sudo npm install -g vercel && \
    # remove npm cache, npm cache clean isn't quite enough as it still leaves behind some files
    sudo rm -rf /root/.npm && \
    # smoke tests
    vercel --version
