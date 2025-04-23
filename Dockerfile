FROM renovate/renovate:39.257.2@sha256:7c90b8c1fb57e6ad1bb1ec1ae0edd56dfe2657f2adc9815c1b46329c8f064a26

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.8.0-1-ce@sha256:a3d52f51c6c67260fe846eb6fd97fb450643ed805fb340fd07c75f1187985fd9

FROM timberio/vector:0.43.0-alpine@sha256:7bcb75f71f93d312d928182e6a07f6df14a18d030785bb3197ac01128bd287a3

FROM timberio/vector:0.43.0-debian@sha256:034947f8b7ea3c974ccec3481da6005dc67291c0b7c0fbf7df6275abe32d9cca
