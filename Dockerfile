# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.4.1-1-ce@sha256:3bfb982474bfb26b625e5827c8123b7c3ec8ee3a4cb0839c1cce2053928f7823

FROM timberio/vector:0.49.0-alpine@sha256:2a31648e67280953aaf6b219c1b04729ac5ed12820ec2bfb698630b2d989d135

FROM timberio/vector:0.49.0-debian@sha256:6a56f8ee78e014d53a32fd7c6f6be9c18244fe861d938932fad8d6e65d3f5926

FROM renovate/renovate:41.40.0@sha256:21e2e5e8c51537649b5d9d1e85c0085aa5f53d5d198e2400d5ecc1e2448f9e9a
