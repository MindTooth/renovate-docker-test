# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.12.0-1-ce@sha256:f4344e1d45159494339ca7184c58e6b76067602e898bee72b53bfa093366c24b

FROM timberio/vector:0.55.0-alpine@sha256:faf14cdafb5526a94b478b2a51055b774b92761c2a22ce3af1fa416a67b75939

FROM timberio/vector:0.55.0-debian@sha256:a4be1111b40303524aae2ffb02cd59cef2a4e9753bd13d265bf0233e921828d9

FROM renovate/renovate:43.177.4@sha256:40e5d101c65c3cb2b03e14bec65a83b1447da908a4f39905f746c184e7128a8d

FROM grafana/grafana:13.0.1@sha256:0f86bada30d65ef9d0183b90c1e2682ac92d53d95da8bed322b984ea78a4a73a
