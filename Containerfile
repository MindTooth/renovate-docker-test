# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.6.1-1-ce@sha256:1f4a9fd8e6eff9e751936d6c5101f1adab0a43d521c79486b02a866d16e374ff

FROM timberio/vector:0.50.0-alpine@sha256:93761c26fa3a3793f5f200de0f4cfc6102b5e9803ab33b4830d0873ba8dbdc4f

FROM timberio/vector:0.50.0-debian@sha256:8e81f992197125f736e1fe5d73117ca6b69a0bb69cf3633f82b9233c9769c9c1

FROM renovate/renovate:42.0.0@sha256:bdf5a8e67d30637c7723a689c03b4d35b33adb651e9f937021f4cf2bc062455f

FROM grafana/grafana:12.2.0@sha256:74144189b38447facf737dfd0f3906e42e0776212bf575dc3334c3609183adf7
