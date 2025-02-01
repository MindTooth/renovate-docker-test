FROM renovate/renovate:39.153.1@sha256:06031b49e03f3cebaca6a2dbeb18935216a2fdf92f1abf479f716f62fb6719b7

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.1.2-1-ce
