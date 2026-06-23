# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.12.0-1-ce@sha256:e670c880eaa20e8b96ac9bd006b9abff383e55193d91e80231ddd669ca469532

FROM timberio/vector:0.56.0-alpine@sha256:8f2de273559680c4a6a03bb2bcf4a7636b08e0fb15269f546adc7b2cef2b6e8c

FROM timberio/vector:0.56.0-debian@sha256:93b072b416fd29152f1bfe5bd2925a0b48999aeb069f3ae000691f82a135c200

FROM renovate/renovate:43.240.0@sha256:c711415a539ebdf15dc5115d793283a281901ad949be1be38d33b86f28cbb331

FROM grafana/grafana:13.0.2@sha256:5dad0df181cb644a14e13617b913b261a54f7d4fd4510721dba420929f35bea2
