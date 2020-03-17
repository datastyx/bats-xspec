FROM datastyx/xspec:1.4.0

RUN apk add bash
RUN git clone https://github.com/bats-core/bats-core.git \
  && cd bats-core \
  && ./install.sh /usr/local

# Install parallel and accept the citation notice (we aren't using this in a
# context where it make sense to cite GNU Parallel).
RUN apk add --no-cache parallel && \
    mkdir -p ~/.parallel && touch ~/.parallel/will-cite

# RUN ln -s /opt/bats/bin/bats /usr/sbin/bats
# COPY . /opt/bats/
ENV SAXON_CP=/usr/local/share/saxon.jar
ENV XSPEC_HOME=/usr/local/share/xspec
WORKDIR /src
ENTRYPOINT ["/bin/bash", "/usr/local/bin/bats"]



