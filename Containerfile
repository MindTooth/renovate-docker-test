# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.13.0-1-ce@sha256:4b0d76c786bfca78b0362b7a24f1f6d55cb25c0333bd9beffd52ab3b5b829d37

FROM timberio/vector:0.56.0-alpine@sha256:8f2de273559680c4a6a03bb2bcf4a7636b08e0fb15269f546adc7b2cef2b6e8c

FROM timberio/vector:0.56.0-debian@sha256:93b072b416fd29152f1bfe5bd2925a0b48999aeb069f3ae000691f82a135c200

FROM renovate/renovate:43.241.3@sha256:9732f1d371633559285f3f184f08e223734cb168a2f5a2e725aa17565a0be8d4

FROM grafana/grafana:13.1.0@sha256:121a7a9ece6dc10b969f1f96eed64b4f07dfac0d0b8abc070f7cb83bbde86f63
