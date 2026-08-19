# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.14.3-1-ce@sha256:9f97ab2a854019737b4fc30a7fdb598f80a547769d4480a76e6f4b6d0bfbd431

FROM timberio/vector:0.57.0-alpine@sha256:19e3526faf4d4b1ed0c28a0d68d4cc3a1e13e437099986a5b7a768707907497c

FROM timberio/vector:0.57.0-debian@sha256:ed2134fa8f9844c1ca6405260903c2c2c52f94af9e16bc8fa9de9655134e0b39

FROM renovate/renovate:44.24.3@sha256:ed29b9870534ba9f4a5d763b0a2c960396373389ba0bfca9a5c9f1b722271b5b

FROM grafana/grafana:13.2.0@sha256:3fd54ae1214669f8355f065ec9f6445d5279a3d77095ab048ca045685272429b
