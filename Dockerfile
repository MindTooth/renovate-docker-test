FROM renovate/renovate:36.57.1@sha256:e8fd5959bc1f635904536bb6578e74c5bb0d7751e63ba48ec11a2ec925e9a613

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.8.0-1-ce@sha256:a3d52f51c6c67260fe846eb6fd97fb450643ed805fb340fd07c75f1187985fd9

FROM timberio/vector:0.46.0-alpine@sha256:60e230766fd3f1f328057dfe3e1d266a649ee62c3455cd681282e003b8d032fb

FROM timberio/vector:0.46.0-debian@sha256:b58c46b9c56b6f4da496aa991a66c40f6a152822065e9e10755dae1eaa2441ad
