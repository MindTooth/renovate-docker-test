# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.8.0-1-ce@sha256:655e5c1380f3a1baa9de5518005865a1a8fe7d73fe8b934ce2a112a017e86841

FROM timberio/vector:0.53.0-alpine@sha256:ca92d617e905953c3f852e7e88061f7039460e733522e3f0c21bc6ae946b2558

FROM timberio/vector:0.53.0-debian@sha256:a3c2790c83180f89569981173d34a9680c05dc0da114fbe2a55235a099acfa13

FROM renovate/renovate:42.95.9@sha256:2fca9d811354313bf55e26feb182e531aabc8f652c8fafdd419afc6cfedb72ce

FROM grafana/grafana:12.3.1@sha256:2175aaa91c96733d86d31cf270d5310b278654b03f5718c59de12a865380a31f
