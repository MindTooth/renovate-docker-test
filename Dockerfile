FROM renovate/renovate:38.142.7@sha256:8327ee1726142dcc504d349d84c0e7f41656867e598ea7669bb7cf23786610a2

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.1.2-1-ce
