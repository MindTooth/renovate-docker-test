FROM renovate/renovate:36.57.1@sha256:e8fd5959bc1f635904536bb6578e74c5bb0d7751e63ba48ec11a2ec925e9a613

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.8.0-1-ce@sha256:a3d52f51c6c67260fe846eb6fd97fb450643ed805fb340fd07c75f1187985fd9

FROM timberio/vector:0.46.1-alpine@sha256:ca248fb6b6839d8a02b487a3abe3f612c8f97fe164b7a7ccbf8f795eda0d935d

FROM timberio/vector:0.46.1-debian@sha256:ccf9c8ffcd1ffbe59e4d62bf44926664908ea1cb6b492b91634d1afd01e3376f
