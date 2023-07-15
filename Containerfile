# Containerfile for building Eclipse Chariott runtime container
FROM registry.fedoraproject.org/fedora:39@sha256:bda776ab5d376dff04311612ef240179e1654bff77cc55daebe6a92fa722bb4b as builder
ARG VERSION="502d5c0d6cf3cf18cb79955c4a73c3e293c8906e"
RUN dnf -y install rust cargo unzip cmake protobuf-devel
ADD https://github.com/eclipse-chariott/chariott/archive/${VERSION}.zip /tmp/chariott.zip
RUN unzip /tmp/chariott.zip -d /tmp;mv /tmp/chariott-${VERSION} /sdv
WORKDIR /sdv
RUN cargo build --release

# Chariott Final Fedora Image
FROM registry.fedoraproject.org/fedora:39@sha256:bda776ab5d376dff04311612ef240179e1654bff77cc55daebe6a92fa722bb4b

# Copy our build
COPY --from=builder /sdv/target/release/chariott /usr/local/bin/chariott
COPY --from=builder /sdv/target/release/chariott.d /etc/

# exposing ports
EXPOSE 4243/tcp
