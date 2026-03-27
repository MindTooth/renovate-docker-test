# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.10.0-1-ce@sha256:d44527ab78154ebeb03e94edabfcff75deeed4672362fba97d6b92e93ab5e7b2

FROM timberio/vector:0.54.0-alpine@sha256:0a5568d7fe54ef565c9e83a8c20ecf0bc7289d1923d78cd5fbe192158a495267

FROM timberio/vector:0.54.0-debian@sha256:099732c890b095d5222f59bdc82a0579ae3d48b9e2407f3680586dd8d2f75f64

FROM renovate/renovate:43.95.0@sha256:47096353b25eec6ac930f81bbe36686b70e6a40c82b426d53e967b1b57acd6c5

FROM grafana/grafana:12.4.1@sha256:e932bd6ed0e026595b08483cd0141e5103e1ab7ff8604839ff899b8dc54cabcb
