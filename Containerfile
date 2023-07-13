# Containerfile for building Eclipse Chariott runtime container
FROM registry.fedoraproject.org/fedora:39@sha256:ffe14fd578df4046db334ff9a32cf2e1ad704abd4877912f33c9d1b3fe0995dc as builder
ARG VERSION="e4b54b7ecec77933efad323351dfebe47fea7c2a"
RUN dnf -y install rust cargo unzip cmake protobuf-devel
ADD https://github.com/eclipse-chariott/chariott/archive/${VERSION}.zip /tmp/chariott.zip
RUN unzip /tmp/chariott.zip -d /tmp;mv /tmp/chariott-${VERSION} /sdv
WORKDIR /sdv
RUN cargo build --release

# Chariott Final Fedora Image
FROM registry.fedoraproject.org/fedora:39@sha256:ffe14fd578df4046db334ff9a32cf2e1ad704abd4877912f33c9d1b3fe0995dc

# Copy our build
COPY --from=builder /sdv/target/release/chariott /usr/local/bin/chariott
COPY --from=builder /sdv/target/release/chariott.d /etc/

# exposing ports
EXPOSE 4243/tcp
