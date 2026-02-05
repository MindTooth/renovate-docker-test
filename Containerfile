# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.8.0-1-ce@sha256:655e5c1380f3a1baa9de5518005865a1a8fe7d73fe8b934ce2a112a017e86841

FROM timberio/vector:0.52.0-alpine@sha256:4be91e938bc85ad1915c2d66f77342078904ca3391934d590c8f523e66613ad7

FROM timberio/vector:0.52.0-debian@sha256:ee3b99e52896fde12d1b07774826c8e58b07b4a995c3a5a624cc268a69ad7572

FROM renovate/renovate:42.95.9@sha256:2fca9d811354313bf55e26feb182e531aabc8f652c8fafdd419afc6cfedb72ce

FROM grafana/grafana:12.3.1@sha256:2175aaa91c96733d86d31cf270d5310b278654b03f5718c59de12a865380a31f
