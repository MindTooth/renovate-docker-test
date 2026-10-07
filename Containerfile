# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.14"

FROM timberio/vector:0.58.0-alpine@sha256:5dcf67db0ee378caa87f3395cb9484ebe3e97bb0334d119f2ac33116e00c5773

FROM timberio/vector:0.58.0-debian@sha256:1c1ea358c617ea0b23003d5af87f7a678b30f8f7096437e680380c47fc13d2d9
