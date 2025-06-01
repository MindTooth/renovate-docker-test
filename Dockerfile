# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.1.1-1-ce@sha256:18910426b84ff280e22f94e8b4374d884b80571f5cceec0081e22b1cceb9cf92

FROM timberio/vector:0.47.0-alpine@sha256:4d2d24f18a31b59e62dde41c5f8f88927f33a3ed9a39a50923d616b1a85890b6

FROM timberio/vector:0.47.0-debian@sha256:a7c96178b5dd0800bb6a4a58559b61bca919a43979cd4c3ef12399175eea5ac7

FROM renovate/renovate:40.37.1@sha256:af04df91a13240ddf6061c70f97133ba6d66c7f273004fccd1ee0319f6ddc948
