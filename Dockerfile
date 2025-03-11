FROM renovate/renovate:36.57.1@sha256:e8fd5959bc1f635904536bb6578e74c5bb0d7751e63ba48ec11a2ec925e9a613

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.8.0-1-ce@sha256:a3d52f51c6c67260fe846eb6fd97fb450643ed805fb340fd07c75f1187985fd9

FROM timberio/vector:0.45.0-alpine@sha256:936e7e05f54b817f5957acbc72ad32a9b7016f7071c03937ee5cbd199e204c02

FROM timberio/vector:0.45.0-debian@sha256:987a15ebfb2eac3a4d5efb26252d140f799553feffb753dc215bdf738a7d4174
