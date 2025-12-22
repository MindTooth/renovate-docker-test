# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.7.2-1-ce@sha256:20c2fde258edb2d2c7e37c32476eb37a51f03523bb44b2c235badbb4cd5c889e

FROM timberio/vector:0.51.1-alpine@sha256:2d16ae87ec395508366f3c064899d374fbe04de6e64c3a613ed64aedbee034b4

FROM timberio/vector:0.51.1-debian@sha256:31c01788f10c47530a99a51bb22d37582d557e3b8edd02dc5bd62f58b2659e34

FROM renovate/renovate:42.57.1@sha256:e1afd51dae0a10be8541e20ebeccee2b6b814e47755458e5038516324f5aae71

FROM grafana/grafana:12.3.1@sha256:2175aaa91c96733d86d31cf270d5310b278654b03f5718c59de12a865380a31f
