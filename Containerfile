# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.13.0-1-ce@sha256:f5ac218f5155e9cb026edc1d8152af788ea420fac61b205d7d80262fd64359c1

FROM timberio/vector:0.56.0-alpine@sha256:8f2de273559680c4a6a03bb2bcf4a7636b08e0fb15269f546adc7b2cef2b6e8c

FROM timberio/vector:0.56.0-debian@sha256:93b072b416fd29152f1bfe5bd2925a0b48999aeb069f3ae000691f82a135c200

FROM renovate/renovate:43.259.2@sha256:119e8b9fd8fcad14152ca42e0f3ba9cbf14ec33dee2ad6a0b46146a98e6fa753

FROM grafana/grafana:13.1.0@sha256:121a7a9ece6dc10b969f1f96eed64b4f07dfac0d0b8abc070f7cb83bbde86f63
