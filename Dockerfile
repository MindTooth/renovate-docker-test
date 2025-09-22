# FROM renovate/renovate:40.11.13@sha256:941b09d86d0e956023f83c56d42df5fd1eec3fceee0b54a3ff3f866f86332de6

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.13"

FROM passbolt/passbolt:5.5.0-1-ce@sha256:311d1985d7857115a73c3eb172f8fd9ef40e018e46964f418e62d4236190539f

FROM timberio/vector:0.49.0-alpine@sha256:2a31648e67280953aaf6b219c1b04729ac5ed12820ec2bfb698630b2d989d135

FROM timberio/vector:0.49.0-debian@sha256:6a56f8ee78e014d53a32fd7c6f6be9c18244fe861d938932fad8d6e65d3f5926

FROM renovate/renovate:41.95.0@sha256:35e3b95481caa6dc908ff32f79aaa285bef9a1b8fa73e2fde06eb1da3a9d52fa
