FROM renovate/renovate:36.57.1@sha256:e8fd5959bc1f635904536bb6578e74c5bb0d7751e63ba48ec11a2ec925e9a613

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.9.1-1-ce@sha256:5dd77b67ac505429fdf1ef5c4443a0fda5ab5c27e43b74d69a846c8c15defad1
