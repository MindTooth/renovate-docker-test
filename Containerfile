# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.14.3-1-ce@sha256:9f97ab2a854019737b4fc30a7fdb598f80a547769d4480a76e6f4b6d0bfbd431

FROM timberio/vector:0.57.0-alpine@sha256:19e3526faf4d4b1ed0c28a0d68d4cc3a1e13e437099986a5b7a768707907497c

FROM timberio/vector:0.57.0-debian@sha256:ed2134fa8f9844c1ca6405260903c2c2c52f94af9e16bc8fa9de9655134e0b39

FROM renovate/renovate:44.5.3@sha256:0de2072bc4c87e1744158adfb8ccd9f49c5bd2da5a0c14bc4b0c90a7cdaab54f

FROM grafana/grafana:13.1.1@sha256:7cb8c64c4d57a57e734073f3cc94620adb24a0acb929bd80ba9f14017e3a975b
