# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.6.1-1-ce@sha256:1f4a9fd8e6eff9e751936d6c5101f1adab0a43d521c79486b02a866d16e374ff

FROM timberio/vector:0.51.0-alpine@sha256:cef2a4d33b43b3e9196ba0bd9f1d8b9006a03bfe15363514c5a0f78b8cb8e9d9

FROM timberio/vector:0.51.0-debian@sha256:5e8456721353d022bf31f18bc547a15fbb6ea8817b4f16b2d0723193241f6443

FROM renovate/renovate:42.0.0@sha256:bdf5a8e67d30637c7723a689c03b4d35b33adb651e9f937021f4cf2bc062455f

FROM grafana/grafana:12.2.0
