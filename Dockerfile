FROM renovate/renovate:36.57.1@sha256:e8fd5959bc1f635904536bb6578e74c5bb0d7751e63ba48ec11a2ec925e9a613

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.6.1-1-ce@sha256:40af741ddfcff5d047762f306ec15816c5e2dce3c12ee11a92671fbc99189fbc
