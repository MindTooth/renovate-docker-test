# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.16.0-1-ce@sha256:dc7298c2847e406154beea5c4c82062828e0b1690d1d9869b2dbeae6f6e70bfc

FROM timberio/vector:0.58.0-alpine@sha256:5dcf67db0ee378caa87f3395cb9484ebe3e97bb0334d119f2ac33116e00c5773

FROM timberio/vector:0.58.0-debian@sha256:1c1ea358c617ea0b23003d5af87f7a678b30f8f7096437e680380c47fc13d2d9

FROM renovate/renovate:44.137.0@sha256:805dbf260d627b5dc53a59be9c26b7be2854977e47d3c94366e97b6cadc4a626

FROM grafana/grafana:13.2.3@sha256:b28bae15e219c998fb0e0424ed724930cc61b1f61fb404d47c862f9a23f9e572

# Official container tools: versioned stable images for source URL and changelog tests.
FROM quay.io/containers/podman:v5.4.0@sha256:5d11e397c064a2307ed8749c33ac65511db14c9369f22737a4cc47df7b815a73 AS podman_containers
FROM quay.io/podman/stable:v5.4.0@sha256:220fce4a743c2f47b066c71a4344bef9883007735e939b1015bc6d1d0f9d3d89 AS podman_stable
FROM quay.io/containers/buildah:v1.39.0@sha256:02bf7089e6d7f52c3c5a0c058bd4d61ff440b01dfd22188309f96566cc494c8d AS buildah_containers
FROM quay.io/buildah/stable:v1.39.0@sha256:85ad593f788870d76c4e0d37c42279d42416b7cad2c1577dd019c83ae04232fa AS buildah_stable
FROM quay.io/containers/skopeo:v1.18.0@sha256:827c878ccf6767899de62022ac57927164da5b88d94ac11c970bf2b15c572361 AS skopeo_containers
FROM quay.io/skopeo/stable:v1.18.0@sha256:c4c8a9d6fc95e331fa92fc31de3f6c9b5fe4761c82f0acb99669eef067fb7c33 AS skopeo_stable

# Testing and development images for source URL and digest update tests.
FROM quay.io/podman/testing:latest@sha256:e840acf31e1b77b4184f8b27d0119e42628a7bfc99ff0ae54e8a6d4bdb5aca1f AS podman_testing
FROM quay.io/podman/upstream:latest@sha256:e48c1bdab098b5d86e39c3b822848d921d6fb2cb6dd26a818043c73cc0bd388b AS podman_upstream
FROM quay.io/buildah/testing:latest@sha256:0293b15d362b4d991e9a5c610d2f1979bc95630915968a985741f057600e38d7 AS buildah_testing
FROM quay.io/buildah/upstream:latest@sha256:e76e825ec19506a3917d12511bfa8ab03e38b5408da6537c8b597531fdfe2ab1 AS buildah_upstream
FROM quay.io/skopeo/testing:latest@sha256:d17a86f05b07fbc5c275f053033a325db9eb43db504f10e4c079a049db3e6267 AS skopeo_testing
FROM quay.io/skopeo/upstream:latest@sha256:705de7a663f955e3814b193e339f73c2f23768a26ed83d783f58a038c3c0106d AS skopeo_upstream

# All-in-one image containing Podman, Buildah, and Skopeo.
FROM quay.io/containers/aio:latest@sha256:74c6323e8c0e368b32ef3270d48cda26a5e95e2843e691e340bfc4957c594145 AS container_tools_aio
