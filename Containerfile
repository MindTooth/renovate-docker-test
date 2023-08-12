# Containerfile for building Eclipse Chariott runtime container
FROM registry.fedoraproject.org/fedora:40@sha256:2265d6e44c7f51629ecb9f7860724c0032aa54d1e7979700a9bc3487df0e8830 as builder
ARG VERSION="e4b54b7ecec77933efad323351dfebe47fea7c2a"
RUN dnf -y install rust cargo unzip cmake protobuf-devel
ADD https://github.com/eclipse-chariott/chariott/archive/${VERSION}.zip /tmp/chariott.zip
RUN unzip /tmp/chariott.zip -d /tmp;mv /tmp/chariott-${VERSION} /sdv
WORKDIR /sdv
RUN cargo build --release

# Chariott Final Fedora Image
FROM registry.fedoraproject.org/fedora:40@sha256:2265d6e44c7f51629ecb9f7860724c0032aa54d1e7979700a9bc3487df0e8830

# Copy our build
COPY --from=builder /sdv/target/release/chariott /usr/local/bin/chariott
COPY --from=builder /sdv/target/release/chariott.d /etc/

# exposing ports
EXPOSE 4243/tcp
