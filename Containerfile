# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.9.0-1-ce@sha256:f52ec94f80f16e92d6fef4cd87ea2543da47c1070e3e80bb2c86c3ad70810f13

FROM timberio/vector:0.53.0-alpine@sha256:ca92d617e905953c3f852e7e88061f7039460e733522e3f0c21bc6ae946b2558

FROM timberio/vector:0.53.0-debian@sha256:a3c2790c83180f89569981173d34a9680c05dc0da114fbe2a55235a099acfa13

FROM renovate/renovate:43.15.1@sha256:f3f855d4ccbc2a22838c8b7958a8f987000182ec3e096e0d9b5c52b510634639

FROM grafana/grafana:12.3.3@sha256:9e1e77ade304069aee3196e9a4f210830e96e80ce9a2640891eccc324b152faf
