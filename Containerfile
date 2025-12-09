# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.7.2-1-ce@sha256:98f30d5abbef4ac9458d4fc965007c1821ef9f7bf2ced662d8eaab2e9e304ba9

FROM timberio/vector:0.51.1-alpine@sha256:2d16ae87ec395508366f3c064899d374fbe04de6e64c3a613ed64aedbee034b4

FROM timberio/vector:0.51.1-debian@sha256:31c01788f10c47530a99a51bb22d37582d557e3b8edd02dc5bd62f58b2659e34

FROM renovate/renovate:42.42.0@sha256:2dd53d6d26597fb3e32f87633c2494b1b3a5dcd9ce30b6966d2efe27c8b87a67

FROM grafana/grafana:12.3.0@sha256:70d9599b186ce287be0d2c5ba9a78acb2e86c1a68c9c41449454d0fc3eeb84e8
