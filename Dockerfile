# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.3.2-1-ce@sha256:01c01a4e74fec223fd65a1e476cf2da482406c6eff8c94a592432ca177ddeb0a

FROM timberio/vector:0.48.0-alpine@sha256:2dda29c892cef4e80e1b9d00d7981d29658aa9c16034a0edb4e6f41a78280e70

FROM timberio/vector:0.48.0-debian@sha256:dae36da06c37c1c17d00c0fcf004925768d32161a4ccd3068cd9745a528f0fbd

FROM renovate/renovate:41.40.0@sha256:21e2e5e8c51537649b5d9d1e85c0085aa5f53d5d198e2400d5ecc1e2448f9e9a
