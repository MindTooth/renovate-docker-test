# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.7.2-1-ce@sha256:98f30d5abbef4ac9458d4fc965007c1821ef9f7bf2ced662d8eaab2e9e304ba9

FROM timberio/vector:0.52.0-alpine@sha256:4be91e938bc85ad1915c2d66f77342078904ca3391934d590c8f523e66613ad7

FROM timberio/vector:0.52.0-debian@sha256:ee3b99e52896fde12d1b07774826c8e58b07b4a995c3a5a624cc268a69ad7572

FROM renovate/renovate:42.57.1@sha256:e1afd51dae0a10be8541e20ebeccee2b6b814e47755458e5038516324f5aae71

FROM grafana/grafana:12.3.0@sha256:70d9599b186ce287be0d2c5ba9a78acb2e86c1a68c9c41449454d0fc3eeb84e8
