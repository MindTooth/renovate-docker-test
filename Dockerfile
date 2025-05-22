# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.1.0-1-ce@sha256:950d94dd5bac6a0aa01f05686bbafc92df02287fd90bdbf2b3ebae7513100004

FROM timberio/vector:0.47.0-alpine@sha256:4d2d24f18a31b59e62dde41c5f8f88927f33a3ed9a39a50923d616b1a85890b6

FROM timberio/vector:0.47.0-debian@sha256:a7c96178b5dd0800bb6a4a58559b61bca919a43979cd4c3ef12399175eea5ac7

FROM renovate/renovate:40.23.2@sha256:b4fcef39e0a5ea99c65a89d908b7deed8f69c28bff78522153a82b5da1cbb8e1
