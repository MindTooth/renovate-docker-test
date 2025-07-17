# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.3.2-1-ce@sha256:01c01a4e74fec223fd65a1e476cf2da482406c6eff8c94a592432ca177ddeb0a

FROM timberio/vector:0.47.0-alpine@sha256:4d2d24f18a31b59e62dde41c5f8f88927f33a3ed9a39a50923d616b1a85890b6

FROM timberio/vector:0.47.0-debian@sha256:a7c96178b5dd0800bb6a4a58559b61bca919a43979cd4c3ef12399175eea5ac7

FROM renovate/renovate:41.5.0@sha256:309442ecefe9bb54812f038cf1d0e20ef2e0ba2a5693256de85106dfdef6c550
