# Containerfile for building Eclipse Chariott runtime container
FROM registry.fedoraproject.org/fedora:40@sha256:8e587c1be475a4f0f2845dab9ff02a2dc58de45d6ef5c8da9b78e55dae0af4b4 as builder
ARG VERSION="e4b54b7ecec77933efad323351dfebe47fea7c2a"
RUN dnf -y install rust cargo unzip cmake protobuf-devel
ADD https://github.com/eclipse-chariott/chariott/archive/${VERSION}.zip /tmp/chariott.zip
RUN unzip /tmp/chariott.zip -d /tmp;mv /tmp/chariott-${VERSION} /sdv
WORKDIR /sdv
RUN cargo build --release

# Chariott Final Fedora Image
FROM registry.fedoraproject.org/fedora:40@sha256:8e587c1be475a4f0f2845dab9ff02a2dc58de45d6ef5c8da9b78e55dae0af4b4

# Copy our build
COPY --from=builder /sdv/target/release/chariott /usr/local/bin/chariott
COPY --from=builder /sdv/target/release/chariott.d /etc/

# exposing ports
EXPOSE 4243/tcp
