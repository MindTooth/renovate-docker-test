# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM passbolt/passbolt:5.6.0-1-ce@sha256:f31075d1cfde0c99733c934c0be9b260266b4b239ef7bffe3654aabcec12f861

FROM timberio/vector:0.50.0-alpine@sha256:93761c26fa3a3793f5f200de0f4cfc6102b5e9803ab33b4830d0873ba8dbdc4f

FROM timberio/vector:0.50.0-debian@sha256:8e81f992197125f736e1fe5d73117ca6b69a0bb69cf3633f82b9233c9769c9c1

FROM renovate/renovate:41.144.1@sha256:6fdc3d455dfbf656a34861121fff41cdcfce92b95afbc77524a5f6b071fd3032
