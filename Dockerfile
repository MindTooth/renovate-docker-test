FROM renovate/renovate:37.440.7@sha256:1ee424e0ed4d8e64e5bb2d442d6bc72b3809bb9d0cf804f4b7180caa47d6002a

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.1.2-1-ce
