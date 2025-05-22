FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.1.0-1-ce@sha256:950d94dd5bac6a0aa01f05686bbafc92df02287fd90bdbf2b3ebae7513100004

FROM timberio/vector:0.46.1-alpine@sha256:ca248fb6b6839d8a02b487a3abe3f612c8f97fe164b7a7ccbf8f795eda0d935d

FROM timberio/vector:0.46.1-debian@sha256:ccf9c8ffcd1ffbe59e4d62bf44926664908ea1cb6b492b91634d1afd01e3376f

FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6
