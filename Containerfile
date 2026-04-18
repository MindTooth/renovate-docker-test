# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.11.0-1-ce@sha256:c575394544b9e4325f7d01768b0301cc5e6eabfe348e29a55b52fcf8ce79df44

FROM timberio/vector:0.54.0-alpine@sha256:0a5568d7fe54ef565c9e83a8c20ecf0bc7289d1923d78cd5fbe192158a495267

FROM timberio/vector:0.54.0-debian@sha256:099732c890b095d5222f59bdc82a0579ae3d48b9e2407f3680586dd8d2f75f64

FROM renovate/renovate:43.129.0@sha256:e4abd88d1d6326fe8a702b38c5ee76487d94b455ba4f305bd904521aba9f5a08

FROM grafana/grafana:12.4.2@sha256:83749231c3835e390a3144e5e940203e42b9589761f20ef3169c716e734ad505
