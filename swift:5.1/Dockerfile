# cszatma/swift:5.1
FROM swift:5.1

# Install Mint
RUN git clone https://github.com/yonaskolb/Mint.git && \
    cd /Mint && \
    make && \
    cd .. && \
    rm -r /Mint

RUN mint --version
