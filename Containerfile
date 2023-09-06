# Containerfile for building Eclipse Chariott runtime container
FROM registry.fedoraproject.org/fedora:40@sha256:a3f67522c2dea6ae20776804d3e34dda66025f5e9b2ec1b2181a84f48bb776e9 as builder
ARG VERSION="e4b54b7ecec77933efad323351dfebe47fea7c2a"
RUN dnf -y install rust cargo unzip cmake protobuf-devel
ADD https://github.com/eclipse-chariott/chariott/archive/${VERSION}.zip /tmp/chariott.zip
RUN unzip /tmp/chariott.zip -d /tmp;mv /tmp/chariott-${VERSION} /sdv
WORKDIR /sdv
RUN cargo build --release

# Chariott Final Fedora Image
FROM registry.fedoraproject.org/fedora:40@sha256:a3f67522c2dea6ae20776804d3e34dda66025f5e9b2ec1b2181a84f48bb776e9

# Copy our build
COPY --from=builder /sdv/target/release/chariott /usr/local/bin/chariott
COPY --from=builder /sdv/target/release/chariott.d /etc/

# exposing ports
EXPOSE 4243/tcp
