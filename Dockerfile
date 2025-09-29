# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.4.1-1-ce@sha256:3bfb982474bfb26b625e5827c8123b7c3ec8ee3a4cb0839c1cce2053928f7823

FROM timberio/vector:0.50.0-alpine@sha256:93761c26fa3a3793f5f200de0f4cfc6102b5e9803ab33b4830d0873ba8dbdc4f

FROM timberio/vector:0.50.0-debian@sha256:8e81f992197125f736e1fe5d73117ca6b69a0bb69cf3633f82b9233c9769c9c1

FROM renovate/renovate:41.95.0@sha256:35e3b95481caa6dc908ff32f79aaa285bef9a1b8fa73e2fde06eb1da3a9d52fa
