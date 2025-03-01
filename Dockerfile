FROM renovate/renovate:36.109.4@sha256:8f080d5441e47ab582a545b18c1ec776063495989594a17b42daa5ab2a37db1a

# renovate: datasource=endoflife-date depName=python versioning=loose
ENV python_version="3.6"

FROM passbolt/passbolt:4.1.2-1-ce
