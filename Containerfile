# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.7.2-1-ce@sha256:20c2fde258edb2d2c7e37c32476eb37a51f03523bb44b2c235badbb4cd5c889e

FROM timberio/vector:0.52.0-alpine@sha256:4be91e938bc85ad1915c2d66f77342078904ca3391934d590c8f523e66613ad7

FROM timberio/vector:0.52.0-debian@sha256:ee3b99e52896fde12d1b07774826c8e58b07b4a995c3a5a624cc268a69ad7572

FROM renovate/renovate:42.65.1@sha256:37703bd49adf0d269b4a702a46d6693f7ff455c388781fda7ac6bef21c49d64f

FROM grafana/grafana:12.3.1@sha256:2175aaa91c96733d86d31cf270d5310b278654b03f5718c59de12a865380a31f
