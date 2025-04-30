FROM renovate/renovate:39.264.0@sha256:f2209c61a9c3c8c74ac58eecb5f15ec43651f1ba694aa33493ff2062b90ff4d3

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.0.0-1-ce@sha256:fa8804c411a5bc2540da884a0ed2effbf9e6320894e093536f6435f4364b0d3b

FROM timberio/vector:0.46.1-alpine@sha256:ca248fb6b6839d8a02b487a3abe3f612c8f97fe164b7a7ccbf8f795eda0d935d

FROM timberio/vector:0.46.1-debian@sha256:ccf9c8ffcd1ffbe59e4d62bf44926664908ea1cb6b492b91634d1afd01e3376f
