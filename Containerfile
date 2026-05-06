# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.11.0-1-ce@sha256:c575394544b9e4325f7d01768b0301cc5e6eabfe348e29a55b52fcf8ce79df44

FROM timberio/vector:0.55.0-alpine@sha256:faf14cdafb5526a94b478b2a51055b774b92761c2a22ce3af1fa416a67b75939

FROM timberio/vector:0.55.0-debian@sha256:a4be1111b40303524aae2ffb02cd59cef2a4e9753bd13d265bf0233e921828d9

FROM renovate/renovate:43.165.1@sha256:b1e44b4b22ded56a2ccd5f41edb764b8ef62dd537b3b32e60d676b0424e7bc06

FROM grafana/grafana:13.0.1@sha256:0f86bada30d65ef9d0183b90c1e2682ac92d53d95da8bed322b984ea78a4a73a
