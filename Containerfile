# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.6.1-1-ce@sha256:1f4a9fd8e6eff9e751936d6c5101f1adab0a43d521c79486b02a866d16e374ff

FROM timberio/vector:0.50.0-alpine@sha256:93761c26fa3a3793f5f200de0f4cfc6102b5e9803ab33b4830d0873ba8dbdc4f

FROM timberio/vector:0.50.0-debian@sha256:8e81f992197125f736e1fe5d73117ca6b69a0bb69cf3633f82b9233c9769c9c1

FROM renovate/renovate:42.8.1@sha256:c9a5a60704ddfafae44a47b15dca1897e4e147fcb14c8b6d29ff8d3672ccf1d3

FROM grafana/grafana:12.2.1@sha256:35c41e0fd0295f5d0ee5db7e780cf33506abfaf47686196f825364889dee878b
