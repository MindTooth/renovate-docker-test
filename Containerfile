# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.14.3-1-ce@sha256:9f97ab2a854019737b4fc30a7fdb598f80a547769d4480a76e6f4b6d0bfbd431

FROM timberio/vector:0.57.0-alpine@sha256:19e3526faf4d4b1ed0c28a0d68d4cc3a1e13e437099986a5b7a768707907497c

FROM timberio/vector:0.57.0-debian@sha256:ed2134fa8f9844c1ca6405260903c2c2c52f94af9e16bc8fa9de9655134e0b39

FROM renovate/renovate:44.17.1@sha256:90759c92793143ae7db68cd14e690109d8ace3527e17c7d188c96a1ad628282e

FROM grafana/grafana:13.1.2@sha256:d177053ab62253815f130d81504f77063baf5fd4ca93299d6048453bd31e047a
