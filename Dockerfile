FROM renovate/renovate:36.57.1@sha256:e8fd5959bc1f635904536bb6578e74c5bb0d7751e63ba48ec11a2ec925e9a613

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.12.1-1-ce@sha256:fc7e7a8848b60a0b89c338d1dc797942e5d74855456324c77295c425bfc6673f

FROM timberio/vector:0.43.0-alpine@sha256:7bcb75f71f93d312d928182e6a07f6df14a18d030785bb3197ac01128bd287a3

FROM timberio/vector:0.43.0-debian@sha256:034947f8b7ea3c974ccec3481da6005dc67291c0b7c0fbf7df6275abe32d9cca
