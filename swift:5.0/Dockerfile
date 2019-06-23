# cszatma/swift:5.0
FROM swift:5.0

# Install Mint
RUN git clone https://github.com/yonaskolb/Mint.git && \
    cd /Mint && \
    make && \
    cd .. && \
    rm -r /Mint

RUN mint --version
