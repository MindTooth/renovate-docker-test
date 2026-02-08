# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.9.0-1-ce@sha256:c8499f46c3640734e3a22bdb6d02a19166f3f4816e45d7668ad9cc5bd9ad59cb

FROM timberio/vector:0.53.0-alpine@sha256:ca92d617e905953c3f852e7e88061f7039460e733522e3f0c21bc6ae946b2558

FROM timberio/vector:0.53.0-debian@sha256:a3c2790c83180f89569981173d34a9680c05dc0da114fbe2a55235a099acfa13

FROM renovate/renovate:43.4.2@sha256:f77e2ab3513ba31e1347b658b85e775924bef896b632c5a3ab1ccd59987e71e1

FROM grafana/grafana:12.3.2@sha256:ba93c9d192e58b23e064c7f501d453426ccf4a85065bf25b705ab1e98602bfb1
