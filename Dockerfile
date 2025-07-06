# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.2.0-1-ce@sha256:2de9d258a2c40eeee49138cb5f25e8cf40f18d564319d2684c86dde6c98df4b6

FROM timberio/vector:0.48.0-alpine@sha256:2dda29c892cef4e80e1b9d00d7981d29658aa9c16034a0edb4e6f41a78280e70

FROM timberio/vector:0.48.0-debian@sha256:dae36da06c37c1c17d00c0fcf004925768d32161a4ccd3068cd9745a528f0fbd

FROM renovate/renovate:41.5.0@sha256:309442ecefe9bb54812f038cf1d0e20ef2e0ba2a5693256de85106dfdef6c550
