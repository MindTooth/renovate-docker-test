FROM renovate/renovate:39.257.2@sha256:7c90b8c1fb57e6ad1bb1ec1ae0edd56dfe2657f2adc9815c1b46329c8f064a26

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:5.0.0-1-ce@sha256:fa8804c411a5bc2540da884a0ed2effbf9e6320894e093536f6435f4364b0d3b

FROM timberio/vector:0.46.1-alpine@sha256:ca248fb6b6839d8a02b487a3abe3f612c8f97fe164b7a7ccbf8f795eda0d935d

FROM timberio/vector:0.46.1-debian@sha256:ccf9c8ffcd1ffbe59e4d62bf44926664908ea1cb6b492b91634d1afd01e3376f
